defmodule QuickMaths do
  @pi 3.14159

  @spec circle_area(number) :: number
  def circle_area(r), do: r * r * @pi

  @spec is_prime(number) :: boolean
  def is_prime(1), do: false
  def is_prime(2), do: true
  def is_prime(n) when rem(n, 2) == 0, do: false
  def is_prime(n), do: is_prime(n, 3)
  def is_prime(n, m) do
    case m > :math.sqrt(n) do
      false ->
        case rem(n, m) == 0 do
                true -> false
                false -> is_prime(n, m+1)
        end
      true -> true
    end
  end

  @spec fibo(number) :: number
  def fibo(n) do
    case n do
      1 -> 1
      2 -> 1
      _ -> fibo(n-1) + fibo(n-2)
    end
  end

  # Tail optimized version
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
