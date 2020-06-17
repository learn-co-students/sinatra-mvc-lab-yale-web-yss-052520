class PigLatinizer
    # attr_accessor = :string

    def piglatinize(string)
        string.split(" ").map do |word|
            latinize_word(word)
        end.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def latinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end

    # def read
    #     @string
    # end
end