defmodule ModulePlayground do     
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias   ModulePlayground.Misc.Util.Math, as: MyMath

    require Integer

    def say_here do
        inspect "I'm Here WANS"
    end

    def inspect(param1) do
        puts  "Starting Output"
        puts param1
        puts "Ending ouput"
    end

    def print_sum do
      MyMath.add(1,1)
    end

    def print_is_even(num) do
        puts "Is  #{num} even? #{Integer.is_even(num)}"
    end


end