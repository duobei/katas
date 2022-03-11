defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `Fizzbuzz`.
  """

  def fizzbuzz(n) when rem(n, 15) == 0 do
    "fizz buzz"
  end

  def fizzbuzz(n) when rem(n, 3) == 0 do
    "fizz"
  end

  def fizzbuzz(n) when rem(n, 5) == 0 do
    "buzz"
  end

  def fizzbuzz(n), do: n

  def list_fizzbuzz(n) do
    1..n |> Enum.map(&fizzbuzz/1)
  end
end
