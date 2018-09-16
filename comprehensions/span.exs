defmodule Span do
  def prime(x) do
    for { min, max } <- [{ 2, x }], n <- min..max, is_prime?(n), do: n
  end

  def is_prime?(x) do
    (2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length()) == 1
  end
end
