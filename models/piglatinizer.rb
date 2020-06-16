require 'pry'
class PigLatinizer

    def initialize()
    end

    def piglatinize(str)
        str.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(str)
        vowels = ['a' , 'e' , 'i' , 'o' ,'u']
        ary = str.split(//)
        index = ary.find_index {|c| vowels.include?(c.downcase)}

        if index == 0
            str + "way"
        else
            consonants = str[0...index]
            new_start = str[index..]
            new_start + consonants + "ay"
        end  
    end 
    
    #binding.pry

end
