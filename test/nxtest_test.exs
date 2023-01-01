defmodule NxtestTest do
  use ExUnit.Case
  doctest Nxtest

  test "greets the world" do
    assert Nxtest.hello() == :world
  end
end
