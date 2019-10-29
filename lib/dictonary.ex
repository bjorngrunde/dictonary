defmodule Dictonary do
  alias Dictonary.WordList

  defdelegate start(), to: WordList
  defdelegate random_word(words), to: WordList
end
