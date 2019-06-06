# frozen_string_literal: true

class Piglatinizer
  def self.latinize(string)
    string = string.downcase.split(' ')
    arr = string.collect do |word|
      a = /[aeiou]/ =~ word
      if a == 0
        word += 'way'
      elsif a == 1
        word = word[1..-1] + word[0] + 'ay'
      elsif a == 2
        word = word[2..-1] + word[0..1] + 'ay'
      elsif a == 3
        word = word[3..-1] + word[0..2] + 'ay'
      else
        word
      end
    end
    arr.join(' ')
  end
end
