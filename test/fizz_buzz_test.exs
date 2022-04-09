defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, return the converted list" do
      assert FizzBuzz.build("numbers.txt") == {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz, :fizzbuzz]}
    end

    test "when an invalid file is provided, returns an error" do
      assert FizzBuzz.build("invalid_file_name.txt") == {:error, "Error reading file: enoent"}
    end
  end
end
