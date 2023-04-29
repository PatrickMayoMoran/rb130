class Scrabble
  POINT_VALUES = {
    a: 1,
    e: 1,
    i: 1,
    o: 1,
    u: 1,
    l: 1,
    n: 1,
    r: 1,
    s: 1,
    t: 1,
    d: 2,
    g: 2,
    b: 3,
    c: 3,
    m: 3,
    p: 3,
    f: 4,
    h: 4,
    v: 4,
    w: 4,
    y: 4,
    k: 5,
    j: 8,
    x: 8,
    z: 10,
    q: 10
  }

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    letters = word.chars

    letters.each { |l| score += points(l) }

    score
  end

  private

  def points(letter)
    letter = letter.downcase.to_sym
    POINT_VALUES[letter]
  end

  attr_reader :word
end
