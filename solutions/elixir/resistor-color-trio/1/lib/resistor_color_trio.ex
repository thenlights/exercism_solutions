defmodule ResistorColorTrio do
  @moduledoc """
  Calculate the resistance value in ohms from resistor colors
  """

  @map_value_to_color %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  @spec value(color :: integer) :: integer
  defp value(color) do
    Map.get(@map_value_to_color, color)
  end
  
  @spec label(colors :: [atom]) :: {number, :ohms | :kiloohms | :megaohms | :gigaohms}
  def label(colors) do
    [color1, color2, color3 | _other_colors] = colors
    val = (10 * value(color1) + value(color2)) * Integer.pow(10, value(color3))
    cond do
      val >= 1_000_000_000 -> {div(val, 1_000_000_000), :gigaohms}
      val >= 1_000_000 -> {div(val, 1_000_000), :megaohms}
      val >= 1_000 -> {div(val, 1_000), :kiloohms}
      true -> {val, :ohms}
    end
  end
end
