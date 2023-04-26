class TextAnalyzer
  def process
    f = File.open('rb130_review.txt', 'r')
    yield(f.read)
    f.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f.split(/\n\n/).count} paragraphs" }
analyzer.process { |f| puts "#{f.split(/\n/).count} lines" }
analyzer.process { |f| puts "#{f.split(/ /).count} words" }
