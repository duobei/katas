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

  def part1_recursion(input) do
    input
    |> build_map()
    |> count_trees_recursion(@slop, {0, 0}, 0)
  end

  def part2_recursion(input) do
    map = build_map(input)

    @slops
    |> Enum.reduce(1, fn slop, acc ->
      acc * count_trees_recursion(map, slop, {0, 0}, 0)
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

  defp count_trees_recursion({_width, height, _lines}, _slope, {_x, y}, total) when y >= height,
    do: total

  defp count_trees_recursion(map, {dx, dy}, {x, y}, total) do
    total =
      case see(map, {x, y}) do
        :tree -> total + 1
        :square -> total
      end

    count_trees_recursion(map, {dx, dy}, {x + dx, y + dy}, total)
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
