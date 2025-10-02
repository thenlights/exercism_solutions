defmodule TakeANumber do
  def start() do
    # Please implement the start/0 function
    spawn(fn -> loop(0) end)
  end

  def loop(state \\ 0) do
    receive do
      {:report_state, sender_pid} -> 
        send(sender_pid, state)
        loop(state)
      {:take_a_number, sender_pid} ->
        new_state = state + 1
        send(sender_pid, new_state)
        loop(new_state)
      :stop -> nil
      _ ->
        loop(state)
    end
  end
end
