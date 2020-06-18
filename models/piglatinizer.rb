$vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

class PigLatinizer


  def piglatinize(string)
    string_array = string.split(" ")
    latin_array = string_array.map {|word| pig_latinize_word(word)}
    latin_array.join(" ")
  end


end

def pig_latinize_word(word)
  if $vowels.include?(word[0])
    pig_latinized_word = word + "way"
  else
    consonants = []
    count = 0
    while count < word.length do
      if !$vowels.include?(word[count])
        consonants << word[count]
      else
        return word[word[consonants.length..-1]] + consonants.join + "ay"
      end
      count+=1
    end
    
  end
 pig_latinized_word
end