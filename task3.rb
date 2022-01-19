# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  factories = a.sort
  initial_pollution = factories.inject(:+)
  filtered_pollution = initial_pollution
  filters = 0

  while filtered_pollution > (initial_pollution / 2) do
    filters = filters  + 1
    factories[-1] = factories[-1] / 2
    factories = factories.sort
    filtered_pollution = factories.inject(:+)
  end

  filters
end

puts solution([5, 19, 8, 1]) == 3
puts solution([10, 10]) == 2
puts solution([3,0,5]) == 2
