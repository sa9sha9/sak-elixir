defmodule Example do
  @moduledoc false
  @attr "one"
  def first, do: @attr # @attrは定義した段階で保持される
  @attr "second"
  def second, do: @attr
end

# first,secondの呼び出しにおいて、()は省略可能
IO.puts "#{Example.first} #{Example.second} #{Example.first}" # one second one