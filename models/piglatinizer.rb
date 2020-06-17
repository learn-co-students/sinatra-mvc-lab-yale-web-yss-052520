class PigLatinizer 

    def piglatinize_word(text)
        vowels = ['A', 'E', 'I', 'O', 'U']
        if vowels.include?(text[0].upcase)
            return text + "way"
        else 
            cons, vows = text.split(/([aeiou].*)/)
            return vows + cons + "ay"
        end 
    end 

    def piglatinize(text)
        text.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end 
end  