defmodule Day10 do
  use Advent.Day, no: 10

  @doc """
  iex> Day10.part1([16, 10, 15, 5, 1, 11, 7, 19, 6, 12, 4])
  {7, 5}

  iex> Day10.part1([28, 33, 18, 42, 31, 14, 46, 20, 48, 47, 24, 23, 49, 45, 19,
  ...> 38, 39, 11, 1, 32, 25, 35, 8, 17, 7, 9, 4, 2, 34, 10, 3])
  {22, 10}
  """
  def part1(input) do
    [start | _rest] = sorted = Enum.sort(input)
    voltage_differentials(sorted, {initial(start, 1), initial(start, 3)})
  end

  defp initial(a, a), do: 1
  defp initial(_, _), do: 0

  defp voltage_differentials([_a], {ones, threes}), do: {ones, threes + 1}

  defp voltage_differentials([a, b | rest], {ones, threes}) do
    case b - a do
      1 -> voltage_differentials([b | rest], {ones + 1, threes})
      2 -> voltage_differentials([b | rest], {ones, threes})
      3 -> voltage_differentials([b | rest], {ones, threes + 1})
      _ -> :exit
    end
  end

  @doc """
  iex> Day10.part2(:parsed_input)
  :ok
  """
  def part2(_input) do
    :ok
  end

  @doc """
  iex> Day10.parse_input("1\\n2\\n3\\n")
  [1,2,3]
  """
  def parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  def part1_verify do
    Advent.data(10) |> parse_input |> part1
  end

  def part2_verify do
    Advent.data(10) |> parse_input |> part2
  end
end
