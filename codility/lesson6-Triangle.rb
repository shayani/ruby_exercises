# https://app.codility.com/programmers/lessons/6-sorting/triangle/
#
# 100% https://app.codility.com/demo/results/trainingTD4GXP-YM9/
#

def solution(a)
  a = a.sort.reverse

  (0..(a.size - 3)).each do |index|
    p = a[index + 0]
    q = a[index + 1]
    r = a[index + 2]

    next if p >= q * 2 # Skip, because if P > Q*2 it will never be a triplet

    if (p + q > r) && (q +r > p) && (p + r > q)
      return 1
    else
      next
    end

  end
  return 0
end

puts solution([10, 2, 5, 1, 8, 20])
puts solution([10, 50, 5, 1])
