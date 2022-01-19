# Rotacionar a Array K vezes

def solution(a, k)
  return [] if a.empty?

  k.times do
    a = a.rotate(-1)

    # Solução alternativa manual
    # last = a.pop
    # a.insert(0, last)
  end
  a
end

puts solution([3, 8, 9, 7, 6], 3) == [9, 7, 6, 3, 8]
puts solution([0, 0, 0], 1) == [0, 0, 0]
puts solution([1, 2, 3, 4], 4) == [1, 2, 3, 4]
