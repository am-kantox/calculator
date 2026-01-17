defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "add/2" do
    test "adds two positive numbers" do
      assert Calculator.add(2, 3) == 5
    end

    test "adds positive and negative numbers" do
      assert Calculator.add(5, -3) == 2
      assert Calculator.add(-5, 3) == -2
    end

    test "adds two negative numbers" do
      assert Calculator.add(-2, -3) == -5
    end

    test "adds floats" do
      assert Calculator.add(2.5, 3.5) == 6.0
    end
  end

  describe "subtract/2" do
    test "subtracts two positive numbers" do
      assert Calculator.subtract(5, 3) == 2
    end

    test "subtracts resulting in negative" do
      assert Calculator.subtract(3, 5) == -2
    end

    test "subtracts negative numbers" do
      assert Calculator.subtract(-5, -3) == -2
      assert Calculator.subtract(5, -3) == 8
    end

    test "subtracts floats" do
      assert Calculator.subtract(5.5, 2.5) == 3.0
    end
  end

  describe "multiply/2" do
    test "multiplies two positive numbers" do
      assert Calculator.multiply(4, 5) == 20
    end

    test "multiplies with negative numbers" do
      assert Calculator.multiply(-2, 3) == -6
      assert Calculator.multiply(-2, -3) == 6
    end

    test "multiplies by zero" do
      assert Calculator.multiply(5, 0) == 0
      assert Calculator.multiply(0, 5) == 0
    end

    test "multiplies floats" do
      assert Calculator.multiply(2.5, 4.0) == 10.0
    end
  end

  describe "divide/2" do
    test "divides two positive numbers" do
      assert Calculator.divide(10, 2) == {:ok, 5.0}
    end

    test "divides with remainder" do
      assert Calculator.divide(7, 2) == {:ok, 3.5}
    end

    test "divides negative numbers" do
      assert Calculator.divide(-10, 2) == {:ok, -5.0}
      assert Calculator.divide(10, -2) == {:ok, -5.0}
      assert Calculator.divide(-10, -2) == {:ok, 5.0}
    end

    test "returns error when dividing by zero" do
      assert Calculator.divide(5, 0) == {:error, :division_by_zero}
      assert Calculator.divide(0, 0) == {:error, :division_by_zero}
    end

    test "divides floats" do
      assert Calculator.divide(7.5, 2.5) == {:ok, 3.0}
    end
  end
end
