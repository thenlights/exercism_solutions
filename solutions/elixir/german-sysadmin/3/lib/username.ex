defmodule Username do
  @moduledoc """
  Sanitizes usernames removing characters that are not defined as [a-z], _.
  German characters: ä, ö, ü, ß are converted to their latinization ae, oe, ue, ss
  """
  
  @spec sanitize_character(non_neg_integer()) :: (non_neg_integer()	| nil)
  defp sanitize_character(character) do
    case character do
      ?ä -> [?a, ?e]
      ?ö -> [?o, ?e]
      ?ü -> [?u, ?e]
      ?ß -> [?s, ?s]
      character 
        when (character >= ?a and character <= ?z) or character == ?_
        -> [character]
      _ -> nil
    end
  end

  @spec sanitize(charlist(), charlist()) :: charlist()
  defp sanitize([head | tail], acc) do
      chunk = sanitize_character(head)
      case chunk do
        nil -> sanitize(tail, acc)
          _ -> sanitize(tail, acc ++ chunk)
      end
  end
  
  @spec sanitize(charlist(), charlist()) :: charlist()
  defp sanitize([], acc) do
      acc
  end
  
  @spec sanitize(charlist()) :: charlist()
  def sanitize(username) do
    sanitize(username, [])
  end
  
end
