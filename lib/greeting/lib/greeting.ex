defmodule Greeting do
  @moduledoc """
  GoodMorning, Hello, GoodEveningそれぞれの挨拶をします。
"""

  alias Greeting.Gm
  alias Greeting.Hello
  alias Greeting.Ge

  @doc """
  #param
    - void
  #return
    - void
  """
  def greeting do
    IO.puts Gm.greeting()
    IO.puts Hello.greeting()
    IO.puts Ge.greeting()
  end
end

Greeting.greeting()