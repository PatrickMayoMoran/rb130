items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Situation 1
gather(items) do | , |
  puts
  puts
end

=begin
Let's start gathering food.
apples, corn, cabbage
wheat
We've finished gathering!
=end

# Situation 2
gather(items) do | , , |
  puts
  puts
  puts
end

=begin
Let's start gathering food.
apples
corn, cabbage
wheat
We've finished gathering!
=end

# Situation 3
gather(items) do | , |
  puts
  puts
end

=begin
Let's start gathering food.
apples
corn, cabbage, wheat
We've finished gathering!
=end

# Situation 4
gather(items) do | , , , |
  puts
end

=begin
Let's start gathering food.
apples, corn, cabbage, and wheat
We've finished gathering!
=end
