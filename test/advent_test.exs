defmodule AdventTest do
  use ExUnit.Case, async: true

  @moduletag timeout: :infinity

  doctest Day1

  # Real solutions from the real problems with real input.
  describe "verification" do
    test "day 1, part 1", do: assert(Day1.part1_verify() == {{1504, 516}, 776_064})
  end
end
