require "camify/version"



class Camify
#

  def process(str)
    replacement_letters = ["ǎ", "ᶀ", "č", "ď", "ě", "ᶂ", "ǧ", "ȟ", "į", "ǰ", "ǩ", "ľ", "m̃", "ň", "ǒ", "p̃", "ʠ", "ř", "š", "ť", "ǔ", "ṽ", "ẘ", "x̌", "ɏ", "ž"]
    new_string = []
    split_array = str.split('')
    split_array.map do |letter|
      if letter.ord >= 97 && letter.ord <= 122
        rep = letter.ord - 97
        new_string.push(replacement_letters[rep])
      else
        new_string.push(letter)
      end

    end

    new_string.join()
  end
end
