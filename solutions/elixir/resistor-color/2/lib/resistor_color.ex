defmodule ResistorColor do
  @doc """
  Return the value of a color band
  """

  @map_color_to_value %{
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
  
  @spec code(atom) :: integer()
  def code(color) do
    Map.get(@map_color_to_value, color, nil)
  end
end
