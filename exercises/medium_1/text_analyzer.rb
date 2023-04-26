class TextAnalyzer
  def process
    f = File.open('rb130_review.txt')
    yield(f)
    f.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f} paragraphs" }
analyzer.process { |f| puts "#{f} lines" }
analyzer.process { |f| puts "#{f} words" }
