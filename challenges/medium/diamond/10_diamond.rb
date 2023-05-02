=begin
  G: Create a diamon with letters from alphabet

  I: Capital Letter
  O: Print to the screen

  Rules:
    when it's just A, return A\n
    Line lengths start at 1, go up by 2


  Examples:
    A -> 1
    A
   B B -> 3
  C   C -> 5
 D     D -> 7
=end

class Diamond
  def self.make_diamond(letter)
    letter_number = get_alphabet_index(letter)
    return "A\n" if letter_number == 1

    longest_line = letter_number * 2 - 1
    letters_needed = ("A"..letter).to_a

  end

  private

  def self.get_alphabet_index(letter)
    letter.ord - 64
  end

  def self.top_half

  end
end
