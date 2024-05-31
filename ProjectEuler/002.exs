defmodule Fibonacci do
  # Fib
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

  # Maps from 2 - n, and gets each iterations fib number, and keeps pulling it till the fib number breaks the limit n
  # Then filteres out the non even and then sums it
  def evenFibSequence(n) do
    Stream.map(2..n, &fib/1) |> Stream.take_while(&(&1 < n)) |> Stream.filter(&rem(&1, 2) == 0) |> Enum.sum()
  end

end

IO.puts(Fibonacci.evenFibSequence(4000000))
