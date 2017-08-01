defmodule Sample.Enum do
    

 def first(list, val \\ nil)
 def first([head | _], _), do: head
 def first([], val), do: val 

 def add(list,val \\ 0) do 
    trace(val)
    [val | list]
 end
 
 #função privada
 defp trace(string) do
     IO.puts("The value passed in was #{string}")
 end

end