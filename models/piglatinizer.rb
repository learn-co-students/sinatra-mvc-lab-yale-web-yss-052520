class PigLatinizer
    attr_reader :text
    def piglatinize_word(word)
        word_arr = word.split('')
        first_sound=""
        until word_arr.first.downcase.match(/[aeiou]/)
            first_sound += word_arr.shift
        end
        if first_sound==""
            pigword = word_arr.join("")+"way"
        else
            pigword = word_arr.join("")+first_sound+"ay"
        end
        pigword
    end
    
    def piglatinize(phrase)
        phrase_arr = phrase.split(' ')
        # binding.pry
        pigphrase = phrase_arr.map { |word| piglatinize_word(word) }
        pigphrase.join(" ") 
    end
end