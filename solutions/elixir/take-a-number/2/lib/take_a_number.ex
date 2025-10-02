defmodule TakeANumber do
  def start() do
    spawn(fn -> _loop(0) end)
  end

  defp _loop(state \\ 0) do
    receive do
      {:report_state, sender_pid} -> 
        send(sender_pid, state)
        _loop(state)
      {:take_a_number, sender_pid} ->
        new_state = state + 1
        send(sender_pid, new_state)
        _loop(new_state)
      :stop -> nil
      _ ->
        _loop(state)
    end
  end
end
