defmodule MyList do
  def len([]), do: 0
  def len([_|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head|tail]), do: [ head*head | square(tail) ]

  def add_1([]), do: []
  def add_1([head|tail]), do: [ head + 1 | add_1(tail) ]

  def map([], _func), do: []
  def map([head|tail], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _func), do: value
  def reduce([head|tail], value, func), do: reduce(tail, func.(head, value), func)

  def mapsum([], _func), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  def max([head|tail]), do: list_max(tail, head)
  def list_max([], value), do: value
  def list_max([head|tail], value) when head >= value, do: list_max(tail, head)
  def list_max([head|tail], value) when head < value, do: list_max(tail, value)

  def span(from, to) when from <= to, do: [ from | span(from + 1, to) ]
  def span(_from, _to), do: []
end
