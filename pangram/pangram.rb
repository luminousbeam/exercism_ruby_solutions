require 'minitest/pride'

class Pangram
  def self.pangram? (sentence)
    downcase_sentence = sentence.downcase
    ('a'..'z').all? { |letter| downcase_sentence.include?(letter) }
  end
end
