defmodule BirdCount do
  
  def today([]) do
    nil
  end
  
  def today([head | _tail]) do
    head
  end

  def increment_day_count([]) do
    [1]
  end
  
  def increment_day_count([head | tail]) do
    [head+1 | tail]
  end

  def has_day_without_birds?([]) do
    false
  end
  
  def has_day_without_birds?([0 | _tail]) do
    true
  end

  def has_day_without_birds?([_ | tail]) do
    has_day_without_birds?(tail)
  end

  def total(list) do
    total(list, 0)
  end

  defp total([], partial) do
    partial
  end

  defp total([head | tail], partial) do
    total(tail, partial + head)
  end

  def busy_days(list) do
    busy_days(list, 0)
  end

  defp busy_days([], days) do
    days
  end

  defp busy_days([head | tail], days) when head < 5 do
    busy_days(tail, days)
  end

  defp busy_days([_head | tail], days) do
    busy_days(tail, days + 1)
  end

end
