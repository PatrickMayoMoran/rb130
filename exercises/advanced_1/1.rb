# Group 1
puts "-----GROUP 1-------"
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')
# BLOCK 1 OBSERVATIONS
# --procs have lenient arity just like blocks - if not enough block arguments
# are passed in, nil will be assigned to block parameters
# --procs are called with the instance method Proc#call
# --procs are created with the proc keyword

# Group 2
puts "-----GROUP 2-------"
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
# my_lambda.call -> Argument error, 0 for 1
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }
# Uninitialized constant - there is no Lambda class, lambda is a type of proc
# lambdas are created with either the = -> syntax or the lambda keyword
# BLOCK 2 OBSERVATIONS
# --lambdas can be created with lambda keyword or = -> (param) syntax
# --lambdas are instances of the Proc class; there is no Lambda class
# --lambdas have strict arity and will raise an ArgumentError exception
# if not enough arguments are passed
# --lambdas are called with the Proc#call instance method

# Group 3
puts "-----GROUP 3-------"
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal') LocalJumpError, block needed with yield keyword
# BLOCK 3 OBSERVATIONS
# --blocks have lenient arity - you don't need to pass an argument; nil will
# be filled in
# --if the yield keyword is used (without a block_given? guard clause) a 
# LocalJumpError exception will be raised if no block is provided
# --you don't have to pass an argument to a block

# Group 4
puts "-----GROUP 4-------"
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
# block_method_2('turtle') { puts "This is a #{animal}."}
# NameError -> Attempt to interpolate animal fails because it is undefined
# as a block parameter, method, or local variable
# BLOCK 4 OBSERVATIONS
# --passed arguments will be assigned to parameters in order; missing
# parameters will be assigned nil
# --you can define a block with no parameters if you like!
#
# All together:
# ARITY
# --Blocks: lenient (can pass in 0, correct, or more arguments
# --Procs: lenient (can pass in 0, correct, or more arguments
# --Lambdas: strict - must pass in correct number
#
# OBJECT?
# --Blocks: not an object; part of syntax of method calls
# --Procs: Proc object
# --Lambdas: Proc objects -> special kind
#
# CREATION
# --Blocks: between {} or do..end with a method call
# --Procs: Proc.new or proc keyword
# --Lambdas: = -> (param) or lambda keyword
#
# CALLING
# --Blocks: yield keyword with arguments passed (or not)
# --Procs: Proc#call method with arguments passed (or not)
# --Lambdas: Proc#call method with correct number of arguments passed
