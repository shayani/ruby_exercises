require 'Benchmark'

def solution(a)

    1 if a.none? { |n| n > 0 }

  arr = Array(1..a.size + 1)
  diff = arr - a
  diff.min

end

puts solution(Array.new(1_000_000) { rand(7..1_000) }) # 5
# puts solution([1, 2, 3]) # 4
# puts solution([-1, -3]) # 1
