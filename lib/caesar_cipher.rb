# Lower case letter range is from 97 - 122
# Upper case letter range is from 65 - 90


def caesar_cipher(sentence, shift)
  new_sentence = ''

  sentence.each_char do |c|
    letter_num = c.ord

    if letter_num >= 65 && letter_num <= 90
      num = letter_num + shift <= 90 ? letter_num + shift : ((letter_num + shift) - 90) + 64 # If the number goes above 90 it will loop back down to 65  
      new_sentence += num.chr

    elsif letter_num >= 97  && letter_num <= 122
      num = letter_num + shift <= 122 ? letter_num + shift : ((letter_num + shift) - 122) + 96 # number will loop back down if it goes above 122
      new_sentence += num.chr
    else
      new_sentence += c
    end
  end
  new_sentence
end
