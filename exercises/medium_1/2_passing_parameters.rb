def raptor_array(arr)
  yield arr
end

raptors = nil

raptor_array(['Raven', 'Finch', 'Hawk', 'Eagle']) do |rav, fin, *rap|
  raptors = rap
end

p raptors
