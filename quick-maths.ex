defmodule QuickMaths do
  def sum(a, b) do
    a + b
  end

  def mul(a, b) do
    a * b
  end

  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-1) + fibo(n-2)
    end
  end

  def fibo_(n) do
    fibo(n, 0, 1)
  end

  def fibo(1, _first, second) do
    second
  end

  def fibo(n, first, second) do
    fibo(n-1, second, first+second)
  end
end
