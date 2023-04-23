# Option 1 - explicit return of block return value if block given
def compute
  return yield if block_given?
  "Does not compute."
end

# OPTION 2 - if statement
def compute2
  if block_given?
    yield
  else
    "Does not compute."
  end
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'
p compute2 { 5 + 3 } == 8
p compute2 { 'a' + 'b' } == 'ab'
p compute2 == 'Does not compute.'
