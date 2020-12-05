defmodule Day<%= @day_no %> do
  use Advent.Day, no: <%= @day_no %>

  @doc """
  iex> Day<%= @day_no %>.part1(:parsed_input)
  :ok
  """
  def part1(_input) do
    :ok
  end

  @doc """
  iex> Day<%= @day_no %>.part2(:parsed_input)
  :ok
  """
  def part2(_input) do
    :ok
  end

  @doc """
  iex> Day<%= @day_no %>.parse_input("YOURSAMPLEINPUTHERE")
  [:ok]
  """
  def parse_input(_input) do
    [:ok]
  end

  def part1_verify do
    Advent.data(<%= @day_no %>) |> parse_input |> part1
  end

  def part2_verify do
    Advent.data(<%= @day_no %>) |> parse_input |> part2
  end
end
