defmodule SpaceAge do
  @moduledoc """
  Tools to calculate apace age
  """
  
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}
  def age_on(planet, seconds) when is_integer(seconds) and seconds > 0 do
    earth_years = seconds / 60 / 60 / 24 / 365.25
    case planet do
      :mercury -> {:ok, earth_years / 0.2408467}
      :venus ->  {:ok, earth_years / 0.61519726}
      :earth ->  {:ok, earth_years}
      :mars ->  {:ok, earth_years / 1.8808158}
      :jupiter ->  {:ok, earth_years / 11.862615}
      :saturn ->  {:ok, earth_years / 29.447498}
      :uranus ->  {:ok, earth_years / 84.016846}
      :neptune ->  {:ok, earth_years / 164.79132}
      _ -> {:error, "not a planet"}
    end
  end

  def age_on(_planet, _seconds) do
    {:error, "Invalid inputs"}
  end
end
