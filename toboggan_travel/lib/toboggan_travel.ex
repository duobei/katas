defmodule TobogganTravel do
  @moduledoc """
  Documentation for `TobogganTravel`.
  """

  @slop {3, 1}
  @slops [{1, 1}, {3, 1}, {5, 1}, {7, 1}, {1, 2}]

  def part1(input), do: count_trees(input, @slop)

  def part2(input) do
    @slops
    |> Enum.reduce(1, fn slop, acc ->
      acc * count_trees(input, slop)
    end)
  end

  def count_trees(input, {dx, dy}) do
    map = build_map(input)

    Stream.iterate({0, 0}, fn {x, y} ->
      {x + dx, y + dy}
    end)
    |> Enum.reduce_while(0, fn position, total ->
      case see(map, position) do
        :tree ->
          {:cont, total + 1}

        :square ->
          {:cont, total}

        nil ->
          {:halt, total}
      end
    end)
  end

  defp build_map(input) do
    lines = String.split(input, "\n", trim: true)
    height = length(lines)
    width = lines |> hd() |> String.length()

    {width, height, lines}
  end

  defp see({width, height, lines}, {x, y}) when y < height do
    lines
    |> Enum.at(y)
    |> String.at(rem(x, width))
    |> case do
      "#" -> :tree
      "." -> :square
    end
  end

  defp see(_, _), do: nil
end
