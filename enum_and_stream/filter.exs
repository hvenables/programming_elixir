defmodule MyEnum do
  def filter([], _func, acc) do
    acc
  end

  def filter([head|tail], func, acc \\ []) do
    if func.(head) do
      filter(tail, func, [head|acc])
    else
      filter(tail, func, acc)
    end
  end
end
