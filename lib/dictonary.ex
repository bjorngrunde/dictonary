defmodule Dictonary do
  alias Dictonary.WordList

  defdelegate random_word(), to: WordList
end
