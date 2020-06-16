class PigLatinizer

    def piglatinize(str)
        str.split(" ").map{|w| piglatinize_word(w)}.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            word.slice((vowel_index)..(word.length-1)) + word.slice(0..(vowel_index-1)) + "ay"
        end
    end

end