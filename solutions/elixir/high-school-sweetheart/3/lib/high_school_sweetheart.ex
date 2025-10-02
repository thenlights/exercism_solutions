defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim_leading()
    |> String.first()
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.capitalize() 
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(&initial(&1))
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    #      ******       ******
    #    **      **   **      **
    #  **         ** **         **
    # **            *            **
    # **                         **
    # **     X. X.  +  X. X.     **
    #  **                       **
    #    **                   **
    #      **               **
    #        **           **
    #          **       **
    #            **   **
    #              ***
    #               *
    left ="**" <> String.pad_leading(initials(full_name1), 10)
    right = String.pad_trailing(initials(full_name2), 10) <> "**"
    line = left <> "  +  " <> right
    "     ******       ******\n" <>
    "   **      **   **      **\n" <>
    " **         ** **         **\n" <>
    "**            *            **\n" <>
    "**                         **\n" <>
    line <> "\n" <>
    " **                       **\n" <>
    "   **                   **\n" <>
    "     **               **\n" <>
    "       **           **\n" <>
    "         **       **\n" <>
    "           **   **\n" <>
    "             ***\n" <>
    "              *\n"
  end
end
