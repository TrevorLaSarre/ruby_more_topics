items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

#1
gather(items) do |*items, wheat|
  puts items.join(', ')
  puts wheat
end

#2
gather(items) do |apples, *items, wheat|
  puts apples
  puts items.join(', ')
  puts wheat
end

#3
gather(items) do |apples, *items|
  puts apples
  puts items.join(', ')
end

#4
gather(items) do |items|
  puts items.join(', ')
end