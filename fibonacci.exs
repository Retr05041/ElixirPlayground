defmodule Fibonacci do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: of(n - 1) + of(n - 2) 
end 

IO.puts(Fibonacci.of(19))

#fibonacci = fn
#  (0,_) -> 0
#  (1,_) -> 1
#  (n, fun) -> fun.(n-1, fun) + fun.(n-2, fun)
#end
#IO.puts(fibonacci.(19, fibonacci))
