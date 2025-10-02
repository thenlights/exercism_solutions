defmodule KitchenCalculator do
  @unit_to_ml %{
    :cup => 240,
    :fluid_ounce => 30,
    :teaspoon => 5,
    :tablespoon => 15,
    :milliliter => 1,
  }

  def get_volume({_unit, volume} = _volume_pair) do
    volume 
  end

  def to_milliliter({:cup, volume} = _volume_pair) do
    {:milliliter, volume * @unit_to_ml.cup}
  end

  def to_milliliter({:fluid_ounce, volume} = _volume_pair) do
    {:milliliter, volume * @unit_to_ml.fluid_ounce}
  end

  def to_milliliter({:teaspoon, volume} = _volume_pair) do
    {:milliliter, volume * @unit_to_ml.teaspoon}
  end

  def to_milliliter({:tablespoon, volume} = _volume_pair) do
    {:milliliter, volume * @unit_to_ml.tablespoon}
  end

  def to_milliliter({:milliliter, volume} = _volume_pair) do
    {:milliliter, volume * @unit_to_ml.milliliter}
  end

  def from_milliliter({_milliliter, volume} = _volume_pair, unit) do
    {unit, volume / @unit_to_ml[unit]}
  end

  def convert(volume_pair, unit) do
    volume_pair
      |> to_milliliter
      |> from_milliliter(unit)
  end
end
