class PigLatinizer 
   
    def piglatinize_word(word)
        if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
            word + "way"
        else 
            word[word.index(/[aeiou]/).. -1] + word[0...word.index(/[aeiou]/)] + "ay"
        end 
    end 


    def piglatinize(sentence)
        sentence.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end
end 