require 'minitest/pride'

class Matrix
  def initialize(string)
    @string = string
  end

  def rows
    @string.lines.map { |row|
      row.split(' ').map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
