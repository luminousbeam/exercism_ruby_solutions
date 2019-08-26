class Acronym
  def self.abbreviate(string)
    string_arr = string.scan(/\w+/)
    words = string_arr.map { |first_letter| first_letter[0]}
    words.join.upcase
  end
end
