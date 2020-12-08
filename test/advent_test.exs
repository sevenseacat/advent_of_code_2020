defmodule AdventTest do
  use ExUnit.Case, async: true

  @moduletag timeout: :infinity

  doctest Day1
  doctest Day2
  doctest Day3
  doctest Day4
  doctest Day5
  doctest Day6
  doctest Day7
  doctest Day8

  # Real solutions from the real problems with real input.
  describe "verification" do
    test "day 1, part 1", do: assert(Day1.part1_verify() == {{1504, 516}, 776_064})
    test "day 1, part 2", do: assert(Day1.part2_verify() == {{13, 317, 1690}, 6_964_490})
    test "day 2, part 1", do: assert(Day2.part1_verify() == 636)
    test "day 2, part 2", do: assert(Day2.part2_verify() == 588)
    test "day 3, part 1", do: assert(Day3.part1_verify() == %{trees: 145, open: 177})
    test "day 3, part 2", do: assert(Day3.part2_verify() == 3_424_528_800)
    test "day 4, part 1", do: assert(Day4.part1_verify() == 226)
    test "day 4, part 2", do: assert(Day4.part2_verify() == 160)
    test "day 5, part 1", do: assert(Day5.part1_verify() == %{col: 0, row: 122, seat_id: 976})
    test "day 5, part 2", do: assert(Day5.part2_verify() == 685)
    test "day 6, part 1", do: assert(Day6.part1_verify() == 6680)
    test "day 6, part 2", do: assert(Day6.part2_verify() == 3117)
    test "day 7, part 1", do: assert(Day7.part1_verify() == 172)
    test "day 7, part 2", do: assert(Day7.part2_verify() == 39645)
    test "day 8, part 1", do: assert(Day8.part1_verify() == {:repeat, 1684})
    test "day 8, part 2", do: assert(Day8.part2_verify() == {:exit, 2188})
  end
end
