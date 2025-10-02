defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key) do
    list = Enum.sort(Tuple.to_list(numbers))
    _search(list, 0, length(list)-1, key)
  end

  # base step
  defp _search([], _index_left, _index_right, _key) do
    :not_found
  end

  # inductive step
  defp _search(list, index_left, index_right, key) do
    middle = floor(length(list)/2)
    
    # left_list        | middle_item |      right_list
    # ^ left_idx    -1      middle    +1   right_idx ^
    
    {list_left, [head|list_right]} = Enum.split(list, middle)
    cond do
      head == key -> {:ok, index_left + middle}
      head < key -> _search(list_right, index_left + middle + 1, index_right, key)
      head > key -> _search(list_left, index_left, index_right - middle - 1 , key)
    end
  end

  
end
