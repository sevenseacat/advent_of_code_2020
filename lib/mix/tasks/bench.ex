defmodule Mix.Tasks.Bench do
  @moduledoc """
  Run all daily benchmarks.
  """

  use Mix.Task

  def run([]) do
    {:ok, modules} = :application.get_key(:advent, :modules)

    modules
    |> Enum.map(&"#{&1}")
    |> Enum.filter(&only_day_modules/1)
    |> Enum.sort_by(&day_no/1)
    |> Enum.map(&run_bench/1)
  end

  def only_day_modules(module_name) do
    String.starts_with?(module_name, "Elixir.Day")
  end

  def day_no(module_name) do
    module_name |> String.replace("Elixir.Day", "") |> String.to_integer()
  end

  def run_bench(module_name) do
    apply(String.to_atom(module_name), :bench, [])
  end
end
