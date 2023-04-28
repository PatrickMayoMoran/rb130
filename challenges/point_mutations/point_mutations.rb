class DNA
  def initialize(dna_strand)
    self.sequence = dna_strand
  end

  def hamming_distance(other_sequence)
    differences = 0

    sequence.chars.each_with_index do |c, i|
      break if i >= other_sequence.size
      differences += 1 unless c == other_sequence[i]
    end

    differences
  end

  private

  attr_accessor :sequence
end
