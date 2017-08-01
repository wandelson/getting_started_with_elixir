defmodule Sample.Calendar do
    
    def day_abbreviation(day) do 
    end

    def day_abbreviation2(day) do
        cond do
           day == :Monday -> "M"
           day == :Tuesday -> "TU"
           day == :Wednesday -> "W"
           day == :Thursday ->  "TH"
           day == :Friday ->  "F"
           day == :Saturday ->  "SA"
           day == :Sunday ->  "SU"
           true -> 'Invalid Day'
        end        

    end

    #or pattner matching

    def day_abbrevation3(:Monday), do: "M"
    def day_abbrevation3(:Tuesday), do: "Tu"
    def day_abbrevation3(:Wednesday), do: "W"
    def day_abbrevation3(:Thursday), do: "TH"
    def day_abbrevation3(:Friday), do: "F"
    def day_abbrevation3(:Saturday), do: "SA"
    def day_abbrevation3(:Sunday), do: "SU"
    def day_abbrevation3(_), do: "Invalid Day"


    def day_abbreviation4(day) do
        case day do 
            :Monday ->  "M"
            :Tuesday -> "TU"
            :Wednesday -> "W"    
            :Thurday -> "TH"
            :Friday -> "Fr" 
            :Saturday -> "SA"
            :Sunday -> "SU"
            _ -> "Invalid day"       
        end
    end

    def describe_date(date) do
        case date do
            {1, _, _} -> "Brand new month!"
            {25, 12, _} -> "Merry Christmas"
            {25, month, _} -> "Only #{12 -  month}"
            {31, 10, 1517 } -> "The information is starting"
            {31, 10, _ } -> "Happy Hallowen"
            {_, month, _ } when month <= 12 -> "Just as average day"
            {_,_,_} -> "Invalid month"
        end
    end


end