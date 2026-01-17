defmodule Calculator do
  @moduledoc """
  A basic calculator module supporting addition, subtraction, multiplication, and division.
  """

  @doc """
  Adds two numbers.

  ## Examples

      iex> Calculator.add(2, 3)
      5

      iex> Calculator.add(-1, 1)
      0

  """
  def add(a, b) when is_number(a) and is_number(b) do
    a + b
  end

  @doc """
  Subtracts the second number from the first.

  ## Examples

      iex> Calculator.subtract(5, 3)
      2

      iex> Calculator.subtract(0, 5)
      -5

  """
  def subtract(a, b) when is_number(a) and is_number(b) do
    a - b
  end

  @doc """
  Multiplies two numbers.

  ## Examples

      iex> Calculator.multiply(4, 5)
      20

      iex> Calculator.multiply(-2, 3)
      -6

  """
  def multiply(a, b) when is_number(a) and is_number(b) do
    a * b
  end

  @doc """
  Divides the first number by the second.

  Returns an error tuple if attempting to divide by zero.

  ## Examples

      iex> Calculator.divide(10, 2)
      {:ok, 5.0}

      iex> Calculator.divide(7, 2)
      {:ok, 3.5}

      iex> Calculator.divide(5, 0)
      {:error, :division_by_zero}

  """
  def divide(_a, 0), do: {:error, :division_by_zero}

  def divide(a, b) when is_number(a) and is_number(b) do
    {:ok, a / b}
  end
end
