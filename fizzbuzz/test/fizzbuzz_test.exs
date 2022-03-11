defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  describe "fizzbuzz/1" do
    test "return the number when it is indivisible by 3 or 5" do
      assert Fizzbuzz.fizzbuzz(1) == "1"
      assert Fizzbuzz.fizzbuzz(2) == "2"
      assert Fizzbuzz.fizzbuzz(4) == "4"
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

  describe "list_fizzbuzz/1" do
    test "return the fizzbuzz list below the num" do
      assert Fizzbuzz.list_fizzbuzz(15) == [
               "1",
               "2",
               "fizz",
               "4",
               "buzz",
               "fizz",
               "7",
               "8",
               "fizz",
               "buzz",
               "11",
               "fizz",
               "13",
               "14",
               "fizz buzz"
             ]
    end

    test "n is not integer" do
      assert_raise RuntimeError, "invalid parameter", fn ->
        Fizzbuzz.list_fizzbuzz("15")
      end
    end
  end
end
