defmodule BasicCalculatorTest do
  use ExUnit.Case
  alias BasicCalculator, as: Calcule

  describe "add/1" do
    test "sum all the number of a list" do
      list = [1, 2, 3, 4]
      assert Calcule.add(list) == {:ok, 10}
    end
  end

  describe "add/2" do
    test "sum of two giving numbers" do
      x = 6
      y = 4
      assert Calcule.add(x, y) == {:ok, 10}
    end
  end

  describe "add/3" do
    test "sum of three giving numbers" do
      x = 6
      y = 3
      z = 2
      assert Calcule.add(x, y, z) == {:ok, 11}
    end
  end
  describe "subtract/2" do
    test "subtraction of two giving numbers" do
      x = 6
      y = 4
      assert Calcule.subtract(x, y) == {:ok, 2}
    end
  end
  describe "subtract/3" do
    test "subraction of three giving numbers" do
      x = 6
      y = 3
      z = 2
      assert Calcule.subtract(x, y, z) == {:ok, 1}
    end
  end

  describe "divide/2" do
    test "division a number" do
      x = 6
      y = 3
      assert Calcule.divide(x, y) == {:ok, 2}
    end

    test "division by zero" do
      x = 6
      y = 0
      assert Calcule.divide(x, y) == {:error, "divided by zero"}
    end
  end

  describe "multiply/2" do
    test "multiplication of two giving numbers" do
      x = 6
      y = 4
      assert Calcule.multiply(x, y) == {:ok, 24}
    end
  end
  describe "multiply/3" do
    test "subraction of three giving numbers" do
      x = 5
      y = 3
      z = 4
      assert Calcule.multiply(x, y, z) == {:ok, 60}
    end
  end

end
