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

  describe "part 2" do
    test "for example" do
      assert TobogganTravel.part2(example()) == 336
    end

    test "for my puzzle input" do
      assert TobogganTravel.part2(input()) == 2_265_549_792
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
