class Acronym
  def self.abbreviate(string)
    string_arr = string.scan(/\b\w/)
    string_arr.join.upcase
  end
end
