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
    r = Random.new
    replacement_letters = ['ǎ','ᶀ','č','ď','ě','ᶂ','ǧ','ȟ','į','ǰ','ǩ','ľ','m̃','ň','ǒ','p̃','ʠ','ř','š','ť','ǔ','ṽ','ẘ','x̌','ɏ','ž']

    random_A = ['Á', 'À', 'Ă', 'Ắ', 'Ằ', 'Ẵ', 'Ẳ', 'Â', 'Ấ', 'Ầ', 'Ẫ', 'Ẩ', 'Ǎ', 'Å', 'Ǻ', 'Ä', 'Ǟ', 'Ã', 'Ȧ', 'Ǡ', 'Ą', 'Ą́', 'Ą̃', 'Ā', 'Ā̀', 'Ả', 'Ȁ', 'A̋', 'Ȃ', 'Ạ', 'Ặ', 'Ậ', 'Ḁ', 'Ⱥ']

    random_a = ['á', 'à', 'ă', 'ắ', 'ằ', 'ẵ', 'ẳ', 'â', 'ấ', 'ầ', 'ẫ', 'ẩ', 'ǎ', 'å', 'ǻ', 'ä', 'ǟ', 'ã', 'ȧ', 'ǡ', 'ą', 'ą́', 'ą̃', 'ā', 'ā̀', 'ả', 'ȁ', 'ȃ', 'ạ', 'ặ', 'ậ', 'ḁ', 'ⱥ', 'ᶏ', 'ẚ']
    if char.ord == 65
      rep = random_A[r.rand(0...random_A.length)]
    elsif char.ord == 97
      rep = random_a[r.rand(0...random_a.length)]
    elsif char.ord >= 98 && char.ord < 123
      rep = replacement_letters[char.ord - 97]
    else
      char
    end
  end


end
