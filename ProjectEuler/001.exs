# Using FP and Elixir like logic
# Logic from Malassi (he was helping a bit with this one lol)
defmodule One do

  # Check if what was sent is a range '0..x' and convert it to a list
  def multiples(%Range{} = range),
    do: multiples(Enum.to_list(range), 0)

  # Pattern matches the fact the first argument is a list, getting x from the front of the list
  # Gaurd stops us from proceeding unless certain criteria are met
  defp multiples([x | rest], y) when rem(x, 3) == 0 or rem(x, 5) == 0,
    do: multiples(rest, y + x)

  # If the gaurd above is unmet, do this
  defp multiples([_ | rest], y),
    do: multiples(rest, y)

  # Finally, if we have an empty list, do this
  defp multiples([], y),
    do: y
end

y = One.multiples(0..999)
IO.puts(y)
