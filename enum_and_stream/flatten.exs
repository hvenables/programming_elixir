defmodule MyEnum do
  def flatten(list) do
    flatten_list(list, [])
  end

  def flatten_list([], acc) do
    Enum.reverse(acc)
  end

  def flatten_list([[] = head|tail], acc) when is_list(head) do
    flatten_list(tail, acc)
  end

  def flatten_list([[first|second] = head|tail], acc) when is_list(head) do
    flatten_list([first|[second|tail]], acc)
  end

  def flatten_list([head|tail], acc) do
    flatten_list(tail, [head|acc])
  end
end
