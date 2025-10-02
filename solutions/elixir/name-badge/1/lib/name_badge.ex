defmodule NameBadge do
  def print(id, name, department) do
    id_string   = if id != nil, do: "[#{id}] - ", else: ""
    dept_string = if department != nil, do: String.upcase(department), else: "OWNER"
    "#{id_string}#{name} - #{dept_string}"
  end
end
