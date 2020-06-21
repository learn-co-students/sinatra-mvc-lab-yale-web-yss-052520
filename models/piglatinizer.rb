class PigLatinizer
   
    # helper method to find vowels
    def vowel_check?(character)
        character.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        # if first letter in word is a vowel
        if vowel_check?(word[0])
            word + "way"
        else #if word starts w consonant(s), take consonants and put them at end in order + "ay"
            vi = word.index(/[aAeEiIoOuU]/)
            start = word.slice(vi..word.length)
            consonants = word.slice(0..vi-1) 
            start + consonants + "ay"
        end
    end

    def piglatinize(sentence)
        # split sentence into words, run through previous method, join back together
        sentence.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end
end