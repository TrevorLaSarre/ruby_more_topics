def count(arr)
  total = 0
  arr.each { |x| total += 1 if yield(x) }
  total
end

#Further Exploration

def count(arr)
  arr.select { |x| yield(x) }.size
end