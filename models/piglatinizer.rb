class PigLatinizer
    
    def piglatinize(input)
        input.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(character)
        character.match(/[AaEeIiOoUu]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else 
            vowel_count = word.index(/[AaEeIiOoUu]/)
            consonants = word.slice(0..vowel_count-1)
            new_word = word.slice(vowel_count..word.length)
            new_word + consonants + "ay"
        end 
    end
end     