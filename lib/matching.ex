defmodule Matching do
  @moduledoc false

  def match() do
    data = %{name: "Dave", state: "TX", likes: "Elixir"}
    # :name, :likesにマッチする値を順次取得
    # <-演算子を使うことによってunmatch時にerrorを発生させず、nil返すようにする
    for key <- [:name, :likes] do
      %{ ^key  => value} = data
      value
    end
  end
end