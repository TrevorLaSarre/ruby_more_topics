def bird_format(arr)
  yield(arr)
end

birds = %w(raven finch hawk eagle)
raptors = []
bird_format(birds) { |_, _, *remaining_birds| raptors = remaining_birds }

p raptors