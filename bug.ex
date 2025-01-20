```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    #Trying to modify list during Enum.each iteration
    list = List.delete(list, x) 
  end
  IO.puts(x)
end)
```