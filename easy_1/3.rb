def missing(arr)
  result = (arr[0]..arr[-1]).to_a
  arr.each { |x| result.delete(x) }
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []