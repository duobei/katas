defmodule TobogganTravelTest do
  use ExUnit.Case
  doctest TobogganTravel

  test "greets the world" do
    assert TobogganTravel.hello() == :world
  end
end
