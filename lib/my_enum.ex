defmodule MyEnum do
  @moduledoc false

  def all?(list),       do: _all?(true, list, &(&1 === &1))
  def all?(list, fun),  do: _all?(true, list, fun)

  defp _all?(true, [head | tail], fun), do: _all?(fun.(head), tail, fun)
  defp _all?(false, _, _),  do: false
end

list = [1,2,3,4,5]
IO.puts MyEnum.all?(list, &(&1 < 4))
IO.puts MyEnum.all?(list)