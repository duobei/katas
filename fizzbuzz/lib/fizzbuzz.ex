defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `Fizzbuzz`.
  """

  def fizzbuzz(n) when rem(n, 3) == 0 do
    "fizz"
  end

  def fizzbuzz(n), do: n
end
