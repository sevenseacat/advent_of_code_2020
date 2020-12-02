defmodule AdventTest do
  use ExUnit.Case, async: true

  @moduletag timeout: :infinity

  doctest Day1
  doctest Day2

  # Real solutions from the real problems with real input.
  describe "verification" do
    test "day 1, part 1", do: assert(Day1.part1_verify() == {{1504, 516}, 776_064})
    test "day 1, part 2", do: assert(Day1.part2_verify() == {{13, 317, 1690}, 6_964_490})
    test "day 2, part 1", do: assert(Day2.part1_verify() == 636)
  end
end
