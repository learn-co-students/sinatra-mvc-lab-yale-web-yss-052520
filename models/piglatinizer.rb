require 'pry'
class PigLatinizer
    # def initialize(str)
    #     @str = str
    # end

    def piglatinize(str)
        
        final_str = ""
        words = str.split(" ")
        words.each_with_index { |word,index|
            chr_arr = word.split("")
            tmp = ""
            chr_arr.length.times{ |n|
                
                chr = chr_arr[0]
                binding.pry if(!chr)
                if(!vowel?(chr.upcase))
                    tmp += chr
                    chr_arr.shift
                else
                    break;
                end
            }
            new_word =  chr_arr.join("") + tmp 
             if vowel?(word[0].upcase)
                new_word += "way"
             else
                new_word += "ay"
             end
            final_str += new_word
            final_str += " " if(words.length != index + 1)
        }

        final_str
    end

    def vowel?(chr)
        (chr == 'A' || chr == 'E' || chr == 'I' || chr == 'O' || chr == 'U')
    end
        
end