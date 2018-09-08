defmodule MyEnum do
  def each([], _func) do
    :ok
  end

  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end
end
