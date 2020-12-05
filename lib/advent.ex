defmodule Advent do
  def data(day), do: File.read!("lib/data/day#{day}")
  def test_data(name), do: File.read!("test/data/#{name}")

  # http://www.petecorey.com/blog/2018/11/12/permutations-with-and-without-repetition-in-elixir/
  def permutations([], _), do: [[]]
  def permutations(_list, 0), do: [[]]

  def permutations(list, k) do
    for head <- list, tail <- permutations(list -- [head], k - 1), do: [head | tail]
  end

  def pmap(collection, func) do
    collection
    |> Enum.map(&Task.async(fn -> func.(&1) end))
    |> Enum.map(&Task.await/1)
  end
end

defmodule Advent.Day do
  defmacro __using__(no: day_no) do
    quote do
      def bench do
        Benchee.run(
          %{
            "day #{unquote(day_no)}, part 1" => fn -> part1_verify() end,
            "day #{unquote(day_no)}, part 2" => fn -> part2_verify() end
          },
          benchee_config()
        )

        :ok
      end

      def experiment(variants) do
        variants
        |> Enum.into(%{})
        |> Benchee.run(benchee_config())

        :ok
      end

      defdelegate benchee_config(), to: unquote(__MODULE__)
    end
  end

  def benchee_config do
    [
      print: [benchmarking: false, configuration: false],
      formatters: [{Benchee.Formatters.Console, comparison: false}]
    ]
  end
end
