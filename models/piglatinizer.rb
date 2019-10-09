require "pry"

class PigLatinizer

  def word_latinizer(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    final_word = ""
    word_split = word.split("")
    word_beginning = []
    if vowels.include?(word_split[0])
      word + "way"
    else
      parts = word.split(/([aeiouAEIOU].*)/)
      pig_word = "#{parts[1]}#{parts[0]}ay"
    end
  end



  def piglatinize(string)
    splitstring = string.split(" ")
    if splitstring.length > 1
      splitstring.map do |word|
        word_latinizer(word)
      end.join(" ")
    else
      word_latinizer(string)
    end

  end


end

# piggy = PigLatinizer.
# piggy.piglatinize("house")
# 0

