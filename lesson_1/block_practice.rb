def takes_a_block(arg)
  puts "About to use the block..."
  yield(arg)
  puts "Done with block!"
end

takes_a_block("Argument")  { |a|  puts "#{a} from the block!" }
