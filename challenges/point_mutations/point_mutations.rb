class DNA
  def initialize(dna_strand)
    self.sequence = dna_strand
  end

  def hamming_distance(other_sequence)
    differences = 0
    sequences = [sequence, other_sequence].sort
    shorter = sequences[0]
    longer = sequences[1]
    shorter.chars.each_with_index do |c, i|
      differences += 1 unless c == longer[i]
    end
    differences
  end

  private

  attr_accessor :sequence
end
