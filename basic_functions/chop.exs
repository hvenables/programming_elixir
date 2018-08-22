defmodule Chop do
  def guess(number, first..last) do
    improve_guess(number, div(first + last, 2), first..last)
  end

  def improve_guess(number, last_guess, _) when number == last_guess do
    IO.puts(last_guess)
  end

  def improve_guess(number, last_guess, first.._) when number < last_guess do
    IO.puts("Is it: #{last_guess}")
    improve_guess(number, div(first + last_guess, 2), first..last_guess)
  end

  def improve_guess(number, last_guess, _..last) when number > last_guess do
    IO.puts("Is it: #{last_guess}")
    improve_guess(number, div(last_guess + last, 2), last_guess..last)
  end
end
