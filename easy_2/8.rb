def max_by(arr)
  max = arr[0]
  arr.each { |x| max = x if yield(x) > yield(max) }
  max
end