defmodule QuickMaths do
  @pi 3.14159

  @spec circle_area(number) :: number
  def circle_area(r), do: r * r * @pi

  @spec fibo(number) :: number
  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-1) + fibo(n-2)
    end
  end

  @spec fibo_(number) :: number
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
