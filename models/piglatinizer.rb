class PigLatinizer
    

    def self.do(user_phrase)
        new.piglatinize(user_phrase)
    end

    def piglatinize(string)
        string_array = string.split(" ")
        string_array.map! {|word| plword(word)}
        string_array.join(" ")
    end

    def plword(word)
        if %w(a e i o u A E I O U).include?(word[0])
            word + "way"
        else
            array = word.split(/(?=[aeiouy])/)
            array.rotate!
            array.join + "ay"
        end
    end
end