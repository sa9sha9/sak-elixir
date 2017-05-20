defmodule GreetingTest do
  use ExUnit.Case
  doctest Greeting

  alias Greeting.{Gm,Hello,Ge}

  test "greeting correspondance" do
    assert Gm.greeting() == "Good Morning!!"
    assert Hello.greeting() == "Hello!"
    assert Ge.greeting() == "Good evening!"
  end
end
