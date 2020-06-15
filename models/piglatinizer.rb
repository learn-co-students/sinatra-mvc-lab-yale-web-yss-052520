class PigLatinizer 
    def piglatinize(words)
        words.split(" ").map{ |word| convert_word(word)}.join(" ")
      end
    

    def convert_word(word)
        if word[0].match(/[aAeEiIoOuU]/) 
            word + "way"
        else 
            first_vowel = word.index(/[aAeEiIoOuU]/)
            old_front = word.slice(0..first_vowel-1)
            new_front = word.slice(first_vowel..word.length)
            new_word = new_front + old_front 
            new_word + "ay"
        end 
    end 

end 