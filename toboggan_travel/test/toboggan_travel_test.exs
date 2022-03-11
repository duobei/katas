defmodule TobogganTravelTest do
  use ExUnit.Case
  doctest TobogganTravel

  describe "part 1" do
    test "for example" do
      assert TobogganTravel.part1(example()) == 7
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
end
