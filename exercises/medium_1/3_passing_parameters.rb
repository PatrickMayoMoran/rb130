items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

puts "# Situation 1"
gather(items) do |*ac, w|
  puts ac.join(', ')
  puts w
end

=begin
Let's start gathering food.
apples, corn, cabbage
wheat
We've finished gathering!
=end

puts "# Situation 2"
gather(items) do |a, *cc, w|
  puts a
  puts cc.join(', ')
  puts w
end

=begin
Let's start gathering food.
apples
corn, cabbage
wheat
We've finished gathering!
=end

puts "# Situation 3"
gather(items) do |a, *ccw|
  puts a
  puts ccw.join(', ')
end

=begin
Let's start gathering food.
apples
corn, cabbage, wheat
We've finished gathering!
=end

puts "# Situation 4"
gather(items) do |a, corn, cab, w|
  puts "#{a}, #{corn}, #{cab}, and #{w}"
end

=begin
Let's start gathering food.
apples, corn, cabbage, and wheat
We've finished gathering!
=end
