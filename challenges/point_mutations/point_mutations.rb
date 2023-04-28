class DNA
  def initialize(dna_strand)
    self.sequence = dna_strand
  end

  def hamming_distance(other_sequence)
    differences = 0
    shorter = [sequence, other_sequence].min_by { |s| s.size }
    p shorter
    differences
  end

  private

  attr_accessor :sequence
end
