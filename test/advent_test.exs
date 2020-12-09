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
  doctest Day9

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
    test "day 9, part 1", do: assert(Day9.part1_verify() == 776_203_571)

    test "day 9, part 2",
      do:
        assert(
          Day9.part2_verify() ==
            {[
               27_369_156,
               29_068_964,
               37_160_073,
               33_550_957,
               36_146_876,
               62_568_016,
               47_164_749,
               41_311_383,
               44_778_259,
               45_631_293,
               39_027_246,
               52_333_265,
               55_938_995,
               48_549_783,
               50_321_666,
               77_431_413,
               47_851_477
             ], 104_800_569}
        )
  end
end
