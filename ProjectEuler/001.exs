defmodule Fibonacci do
  def calculate(x),
    do: calculate(x - 1) + calculate(x - 2)
end
