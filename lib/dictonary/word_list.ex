defmodule Dictonary.WordList do
  @me __MODULE__

  @spec start_link :: {:error, any} | {:ok, pid}
  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  @spec random_word :: any
  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end

  @spec word_list :: [binary]
  def word_list() do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
