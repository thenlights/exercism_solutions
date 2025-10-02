defmodule FreelancerRates do

   @billable_days_per_mont 22.0
   @billable_hours_per_day 8.0

  def daily_rate(hourly_rate) do
    hourly_rate * @billable_hours_per_day
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1.0  - (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    @billable_days_per_mont * daily_rate(hourly_rate)
      |> apply_discount(discount)
      |> Float.ceil(0)
      |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor((budget / 8) / apply_discount(hourly_rate, discount), 1)
  end
end
