defmodule ResistorColorDuo do

  @moduledoc "Resistance utilities"

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

  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    [color1, color2 | _other_colors] = colors
    10 * Map.get(@map_value_to_color, color1) + Map.get(@map_value_to_color, color2)
  end
end
