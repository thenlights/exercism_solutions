defmodule EliudsEggs do

  @import Bitwise
  
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) when is_integer(number) do
    Enum.to_list(0..ceil(:math.log2(number+1)))
    |> Enum.reduce(0, 
        fn x, acc -> 
          cond  do
              Integer.pow(2, x) == Bitwise.band(number, Integer.pow(2, x)) -> acc + 1 
              true -> acc
          end
        end)
  end
end
