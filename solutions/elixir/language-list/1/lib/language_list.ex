defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [head | tail] = list
    tail
  end

  def first(list) do
    [head | tail] = list
    head
  end

  def count(list) do
    case list do
      [] -> 0
      [item] -> 1
      [head | tail] -> 1 + count(tail)
    end
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
