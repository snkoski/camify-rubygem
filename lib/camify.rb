require "camify/version"



class Camify

  def process(str)
    new_string = ''
    split_array = str.split('')

    split_array.map do |letter|
      new_string += change_character(letter)
    end
    new_string
  end

  private

  def change_character(char)
    replacement_letters = ['ǎ','ᶀ','č','ď','ě','ᶂ','ǧ','ȟ','į','ǰ','ǩ','ľ','m̃','ň','ǒ','p̃','ʠ','ř','š','ť','ǔ','ṽ','ẘ','x̌','ɏ','ž']

    if char.ord >= 97 && char.ord < 123
      rep = replacement_letters[char.ord - 97]
    else
      char
    end
  end
  
end
