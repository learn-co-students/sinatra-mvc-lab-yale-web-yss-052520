class PigLatinizer
    VOWELS = "aieou"

    def piglatinize(string)
        final_string = ''
        string.split(' ').each do |string|
            word = ''
            if vowel_tester?(string[0])
                word = string + "way"
            else
                word = latin_helper(string)
            end
            final_string += word + " "
        end
        final_string.strip
    end

    def latin_helper(string)
        string.chars.each_with_index do |char, index|
            if vowel_tester?(char)
                final_string = string[index..-1] + string[0...index]
                return final_string + "ay"
            end
        end
    end

    def vowel_tester?(char)
        VOWELS.include?(char) || VOWELS.upcase.include?(char)
    end
end