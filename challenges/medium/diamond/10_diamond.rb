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
    range = ("A"..letter).to_a + ("A"...letter).to_a.reverse
    diamond_width == max_width(letter)

    range.each_with_object([]) do |let, arr|
      arr << make_row(let).center(diamond_width)
    end.join("\n") + "\n"

  end

  class << self
    private
    
    def make_row(letter)
      return "A" if letter == "A"
      return "B B" if letter == "B"

      letter + determine_spaces(letter) + letter
    end

    def determine_spaces(letter)
      all_letters = ['B']
      spaces = 1

      until all_letters.include?(letter)
        current_letter = all_letters.last
        all_letters << current_letter.next
        spaces += 2
      end

      ' ' * spaces
    end

    def max_width(letter)
      return 1 if letter == 'A'
      determine_spaces(letter).count(' ') + 2
    end
  end
end
