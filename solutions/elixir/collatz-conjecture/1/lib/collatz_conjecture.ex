defmodule Integer.Guards do
  defguard is_even(value) when is_integer(value) and rem(value, 2) == 0
  defguard is_odd(value) when is_integer(value) and rem(value, 2) != 0
  defguard is_positive_integer(value) when is_integer(value) and value > 0 
end

defmodule CollatzConjecture do
  @moduledoc """
  Calculate steps of Collatz Conjecture
  """

  import Integer.Guards

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when is_positive_integer(input) do
    step(input, 0)
  end
  
  defp step(1, steps) do
    steps
  end
  
  defp step(input, steps) when is_even(input) do
    step(div(input, 2), steps + 1)
  end

  defp step(input, steps) when is_odd(input) do
    step((3 * input ) + 1, steps + 1)
  end
  
end
