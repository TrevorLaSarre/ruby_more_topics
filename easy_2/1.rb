def step(first, last, step)
  while first <= last
    yield(first)
    first += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }