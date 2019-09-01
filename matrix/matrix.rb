require 'minitest/pride'

class Matrix
  def initialize(string)
    @string = string
  end

  def rows
    @string.lines.map { |row|
      row.lines(' ').map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
