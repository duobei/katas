defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "return the number when it is indivisible by 3 or 5" do
    assert Fizzbuzz.fizzbuzz(1) == 1
    assert Fizzbuzz.fizzbuzz(2) == 2
    assert Fizzbuzz.fizzbuzz(4) == 4
  end

  test "return fizz when the number is divisible by 3" do
    assert Fizzbuzz.fizzbuzz(3) == "fizz"
    assert Fizzbuzz.fizzbuzz(6) == "fizz"
    assert Fizzbuzz.fizzbuzz(9) == "fizz"
  end
end
