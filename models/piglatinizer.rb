class PigLatinizer 
    def initialize 
    end 

    def piglatinize(input) 
        word_array = input.split(" ") 
        word_array.map do |word| 
            self.piglatinize_word(word)
        end.join(" ")
    end 

    def piglatinize_word(text) 
        front_cons = self.front_cons(text) 
        front_number = front_cons.length 
        char_array = text.split("") 
        char_array.shift(front_number) 
        char_array << front_cons.join("") 
        if front_number == 0 
            char_array << "way"
        else
            char_array << "ay" 
        end
        char_array.join("") 
    end 

    def front_cons(text) 
        char_array = text.split("")
        front_cons = [] 
        char_array.each do |letter|
            if self.vowel?(letter) 
                return front_cons 
            else 
                front_cons << letter 
            end 
        end 
        front_cons
    end 

    def vowel?(letter)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"] 
        if vowels.find{|vowel| vowel == letter} 
            return true 
        end 
        return false 
    end 
end 