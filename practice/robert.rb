def call_me(some_code)
  name = 'Mayo'
  some_code.call(name)    # call will execute the "chunk of code" that gets passed in
end

name = "Robert"
chunk_of_code = Proc.new {|name| puts "hi #{name}"}

call_me(chunk_of_code)
