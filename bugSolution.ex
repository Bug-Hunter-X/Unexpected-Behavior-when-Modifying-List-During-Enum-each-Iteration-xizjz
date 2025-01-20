```elixir
list = [1, 2, 3, 4, 5]

#Correct approach using Enum.filter
list_without_3 = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(list_without_3)

#Alternative using recursion
list = [1, 2, 3, 4, 5]

defmodule MyList do
  def delete_element(list, element) do
    delete_element(list, element, [])
  end

  defp delete_element([], _element, acc), do: Enum.reverse(acc)
  defp delete_element([head | tail], element, acc) do
    if head == element do
      delete_element(tail, element, acc)
    else
      delete_element(tail, element, [head | acc])
    end
  end
end

list_without_3_recursive = MyList.delete_element(list, 3)
IO.inspect(list_without_3_recursive)
```