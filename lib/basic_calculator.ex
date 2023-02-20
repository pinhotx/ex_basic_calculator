defmodule BasicCalculator do
  @moduledoc """
  Documentation for `BasicCalculator`.
  """

  @doc """
  Basic Calculator.

  ## Examples

      iex> BasicCalculator.add(7,2)
      {:ok, 9}

      iex> BasicCalculator.divide(4,0)
      {:error, "divided by zero"}


  """

  # add with arity 1 (ByList) : add/1
  def add(list), do: {:ok, Enum.sum(list)}
  # add with arity 2 : add/2
  def add(x, y), do: {:ok, x + y}
  # add with arity 3 : add/3
  def add(x, y, z), do: {:ok, x + y + z}

  # Subtract with arity 2 : subtract/2
  def subtract(x, y), do: {:ok, x - y}
  # Subtract with arity 3 : subtract/3
  def subtract(x, y, z), do: {:ok, x - y - z}

  # Divide with arity 2 when the first number is divided by zero : subtract/2
  def divide(_x, y) when y == 0, do: {:error, "divided by zero"}
  # Divide with arity 2 : subtract/2
  def divide(x, y), do: {:ok, x / y}

  # Multily with arity 2 : multiply/2
  def multiply(x, y), do: {:ok, x * y}
  # Multily with arity 3 : multiply/3
  def multiply(x, y, z), do: {:ok, x * y * z}

end
