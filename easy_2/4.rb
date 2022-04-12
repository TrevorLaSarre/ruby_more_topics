def count(*arguments)
  total = 0
  arguments.each { |x| total += 1 if yield(x) }
  total
end