# spec/caesar_cipher_spec.rb
require 'caesar_cipher.rb'

describe '#caesar_cipher' do
  it 'shifts letters correctly' do
    expect(caesar_cipher('hello there', 3)).to eql('khoor wkhuh')
  end

  it 'Capitalization stays the same' do
    expect(caesar_cipher('How is it going', 4)).to eql('Lsa mw mx ksmrk')
  end

  it 'punctuation is not changed' do
    expect(caesar_cipher('However, this is false!', 4)).to eql('Lsaiziv, xlmw mw jepwi!')
  end
end