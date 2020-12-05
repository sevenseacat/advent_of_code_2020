defmodule Mix.Tasks.Day do
  use Mix.Task

  def run([day_no]) do
    file_path = Path.join([File.cwd!(), "lib", "day#{day_no}.ex"])
    Mix.Generator.copy_template("priv/templates/day.ex", file_path, day_no: day_no)

    Mix.Shell.IO.info(
      "Don't forget to also add `doctest Day#{day_no}` to `test/advent_test.exs`!"
    )
  end

  def run([]) do
    Mix.Shell.IO.error(
      "Please provide the day number to generate a template for, eg. `mix day 7` for day 7"
    )
  end
end
