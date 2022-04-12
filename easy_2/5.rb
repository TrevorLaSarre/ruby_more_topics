def drop_while(arr)
  arr.each_with_index.with_object([]) do |(x, idx), result|
    if idx == (arr.size - 1)
      result << x if !result.empty? || !yield(x)
    else
      result << x if !yield(x)
    end
  end
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []