require "pry"
class PigLatinizer
    
    def piglatinize(text)
        text.split(" ").map{|word| 
            process(word.split(""))
        }.join(" ")
    end

    def process(text)
        return if text == []

        vowels = ["a", "e", "i", "o", "u"]

        text << "w" if vowels.include?(text[0].downcase())
        

        while (text && (!vowels.include?(text[0].downcase())))
            dropped_letter = text.shift()
            text << dropped_letter
        end
        
        text.join() + "ay"
    end
end

# binding.pry
# 0