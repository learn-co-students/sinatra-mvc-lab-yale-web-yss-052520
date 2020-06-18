require 'pry'
class PigLatinizer

    attr_accessor :phrase  

    VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    def initialize
     @phrase = phrase 
    end

    def piglatinize(soup) 
        words = soup.split(" ")
        array = []
        new_soup = words.map do |word|
            # binding.pry
            new_word = ""
            if VOWELS.member? word[0]
                word.concat("way")
                array << word 
            else 
                starter = word[/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+[aeiouAEIOU]{0}/]
                word = word.delete_prefix(starter)
                word = word.concat(starter)
                word = word.concat("ay")
                new_word = word
                array << word  
                # binding.pry
                # 0
            end
            # binding.pry 
            # word = new_word 
            # binding.pry 
        end
        array.join(' ')
        # binding.pry
        #  0

    end
end