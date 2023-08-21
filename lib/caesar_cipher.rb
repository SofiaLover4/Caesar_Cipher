# Lower case letter range is from 97 - 122
# Upper case letter range is from 65 - 90


def caesar_cipher(sentence, shift)
  new_sentence = ''
  sentence.each_char do |c|
    if (c.ord >= 65 && c.ord <= 90)
      num = c.ord + shift <= 90 ? c.ord + shift : ((c.ord + shift) - 90) + 64 # If the number goes above 90 it will loop back down to 65  
      new_sentence += num.chr
    elsif (c.ord >= 97  && c.ord <= 122)
      num = c.ord + shift <= 122 ? c.ord + shift : ((c.ord + shift) - 122) + 96 # number will loop back down if it goes above 122
      new_sentence += num.chr
    else
      new_sentence += c
    end
  end
  new_sentence
end
