# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  a.group_by{ |e| e }.select { |_k, v| v.size == 1}.values.first.first
  # a.tally

end


puts solution([9,3,9,3,9,7,9])
