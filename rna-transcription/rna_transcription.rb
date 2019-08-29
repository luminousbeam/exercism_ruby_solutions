require 'minitest/pride'

class Complement
RNA = {
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U'
}

  def self.of_dna(nucleotide)
    nucleotide.each_char.map { |c| RNA.values_at(c).join }.join
  end

end
