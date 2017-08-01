defmodule Sample.Utils do
    def square(a), do: a * a 

    def sum(a,b), do: a + b

    def custom_func(a, f) do 
        f.(a)
    end

    #Sample.Utils.custom_func(1, fn(x) -> IO.puts(x) end) //1 

end