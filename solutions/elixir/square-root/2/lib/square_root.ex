defmodule SquareRoot do
  @doc """
  Calculate the integer square root of a positive integer
  """
  @spec calculate(radicand :: pos_integer) :: pos_integer
  def calculate(radicand) do
    left = 0;
    right = radicand + 1;
    _calculate(left, right, radicand)
  end

  defp _calculate(left, right, radicand) when left != right-1 do
     middle = floor((left + right) / 2)
    if (middle * middle <= radicand) do
      _calculate(middle, right, radicand)
    else
      _calculate(left, middle, radicand)
    end
  end

  defp _calculate(left, _right, _radicand) do
    left
  end
  
end
