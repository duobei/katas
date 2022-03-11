defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "return the number when it is indivisible by 3 or 5" do
    assert Fizzbuzz.fizzbuzz(1) == 1
    assert Fizzbuzz.fizzbuzz(2) == 2
    assert Fizzbuzz.fizzbuzz(4) == 4
  end
end
