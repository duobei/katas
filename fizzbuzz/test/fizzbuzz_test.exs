defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "return the number when it is indivisible by 3 or 5" do
    assert Fizzbuzz.fizzbuzz(1) == 1
    assert Fizzbuzz.fizzbuzz(2) == 2
    assert Fizzbuzz.fizzbuzz(4) == 4
  end

  test "return \"fizz\" when the number is divisible by 3" do
    assert Fizzbuzz.fizzbuzz(3) == "fizz"
    assert Fizzbuzz.fizzbuzz(6) == "fizz"
    assert Fizzbuzz.fizzbuzz(9) == "fizz"
  end

  test "return \"buzz\" when the number is divisible by 5" do
    assert Fizzbuzz.fizzbuzz(5) == "buzz"
    assert Fizzbuzz.fizzbuzz(10) == "buzz"
    assert Fizzbuzz.fizzbuzz(20) == "buzz"
  end

  test "return \"fizz buzz\" when the number is divisible by 3 and 5" do
    assert Fizzbuzz.fizzbuzz(15) == "fizz buzz"
    assert Fizzbuzz.fizzbuzz(30) == "fizz buzz"
    assert Fizzbuzz.fizzbuzz(45) == "fizz buzz"
  end
end
