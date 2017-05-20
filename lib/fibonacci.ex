defmodule Fibonacci do
  @moduledoc false

  def cal(), do: _cal()

  @max 10000
  defp _cal(@max),  do: @max
  defp _cal(n),    do: n + _cal(n+1)
  defp _cal(),     do: 0 + 1 + _cal(2)
end

IO.puts Fibonacci.cal();