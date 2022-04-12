def compute
  block_given? ? yield : 'Does not compute.'
end

#Further Exploration

def compute(x)
  block_given? ? yield(x) : 'Does not compute.'
end

p compute('Hello') { |x| x + '!' } == 'Hello!'
p compute(3) { |x| x + 3 } == 6
p compute(true) == 'Does not compute.'