defmodule DictonaryTest do
  use ExUnit.Case
  doctest Dictonary

  test "greets the world" do
    assert Dictonary.hello() == :world
  end
end
