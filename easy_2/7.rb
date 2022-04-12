def each_with_object(arr, obj)
  arr.each { |x| yield(x, obj) }
  obj
end
