def solution(x, a)

  leafs_in_place = {}
  a.each_with_index do |leaf_position, index|
    if leaf_position <= x

      leafs_in_place[leaf_position] = true

      if leafs_in_place.size == x
        return index
      end
    end
  end
  -1
end

puts solution(5, [1, 3, 1, 4, 2, 3, 5, 4]) # 6
puts solution(8, [1, 6, 7, 2, 4, 5, 6, 9, 7, 4, 7, 8, 3, 12]) # 12
puts solution(3, [1, 4, 66, 5, 8, 7, 99, 8, 5, 66, 7, 4, 3, 2, 5, 6, 2, 7, 6, 9, 8, 7, 8, 9, 0, 9]) # 13
puts solution(5, [1, 2, 3, 6, 7, 8])
puts solution(1, [1, 1])
