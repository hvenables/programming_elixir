defmodule MyEnum do

  def any?([], _func) do
    false
  end

  def any?([head|tail], func) do
    if func.(head) do
      true
    else
      any?(tail, func)
    end
  end
end
