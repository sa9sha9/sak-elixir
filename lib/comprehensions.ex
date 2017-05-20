defmodule Comprehensions do
  @moduledoc false

  import Integer

  def basic() do
    list = 1..5
    for n <- list, times <- 1..n, is_even(n) do
      String.duplicate("*", times)
    end
  end

  def list_to_string() do
    words_list = ["hoge", "fuga", "bar", "foo"]
    for word <- words_list, into: "", do: word
  end
end

