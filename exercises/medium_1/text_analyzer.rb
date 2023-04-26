class TextAnalyzer
  def process
    f = File.open('rb130_review.txt', 'r')
    yield(f)
    f.close
  end
end

# Original solution
analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f.read.split(/\n\n/).count} paragraphs" }
analyzer.process { |f| puts "#{f.read.split(/\n/).count} lines" }
analyzer.process { |f| puts "#{f.read.split(/ /).count} words" }

# Extra solution with readlines for practice
analyzer.process { |f| puts "#{f.readlines('').count} paragraphs" }
analyzer.process { |f| puts "#{f.readlines.count} lines" }
analyzer.process { |f| puts "#{f.readlines(' ').count} words" }
