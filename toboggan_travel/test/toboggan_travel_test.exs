defmodule TobogganTravelTest do
  use ExUnit.Case
  doctest TobogganTravel

  describe "part 1" do
    test "for example" do
      assert TobogganTravel.part1(example()) == 7
    end

    test "for my puzzle input" do
      assert TobogganTravel.part1(input()) == 242
    end
  end

  defp example() do
    """
    ..##.......
    #...#...#..
    .#....#..#.
    ..#.#...#.#
    .#...##..#.
    ..#.##.....
    .#.#.#....#
    .#........#
    #.##...#...
    #...##....#
    .#..#...#.#
    """
  end

  defp input() do
    File.read!("priv/input.txt")
  end
end
