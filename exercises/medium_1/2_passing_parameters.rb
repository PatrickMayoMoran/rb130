def raptor_array(arr)
  yield arr
end

def birdies(birds)
  yield birds
end

# Provided solution
birdies(['Raven', 'Finch', 'Hawk', 'Eagle']) do |_, _, *raptors|
  puts "Rapters: #{raptors.join(' --- ')}"
end

# Original solution below
raptors = nil

raptor_array(['Raven', 'Finch', 'Hawk', 'Eagle']) do |rav, fin, *rap|
  raptors = rap
end
