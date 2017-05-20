defmodule ListsAndRecursion0 do
  @moduledoc false

  def sum(list), do: _sum(list)

  defp _sum([]), do: 0
  defp _sum([head | tail]), do: head + _sum(tail)
end

defmodule ListsAndAccumulate do
  @moduledoc "with accumulator"

  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail ], total), do: _sum(tail, head+total)
end

list = [1,2,3,4,5]
IO.puts ListsAndRecursion0.sum(list)

IO.puts ListsAndAccumulate.sum(list)