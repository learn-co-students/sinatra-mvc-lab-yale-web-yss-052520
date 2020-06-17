class PigLatinizer

    def piglatinize(sentence)
        #get words from sentence
        result = []
        words = sentence.split(" ")
        for word in words
            if /^[aeiou]/i.match(word)
                result << "#{word}way"
            else
                parts = word.split(/([aeiou].*)/)
                result << "#{parts[1]}#{parts[0]}ay"
            end
        end
        result.join(' ')
    end
end