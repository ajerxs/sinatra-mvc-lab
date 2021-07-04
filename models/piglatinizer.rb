class PigLatinizer

    def piglatinize(string)
        @vowels = ["a", "e", "i", "o", "u"]
        @constants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        if string.split(" ").count == 1
            if @vowels.include?(string[0].downcase)
                "#{string}way"
            else 
                pig = string.split(/([aeiou].*)/)
                "#{pig[1]}"  + "#{pig[0]}ay"
            end
        else
            @pigphrase = []
            @words = string.split(" ")
            @words.each do |word|
                if @vowels.include?(word[0].downcase)
                    @pigphrase << "#{word}way"
                else
                    pig = word.split(/([aeiou].*)/)
                    @pigphrase << "#{pig[1]}" + "#{pig[0]}ay"
                end
            end
            @pigphrase.join(" ")
        end
    end

end