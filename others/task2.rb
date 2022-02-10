def solution(s)

  # First, create a reversed string (as an array) with only letters
  # stripping all special characters of it
  reversed = s.chars.reverse.select { |c| !c.match(/[a-zA-Z]/).nil? }

  # Keep tracking of index where a special character should be included in the
  # reversed string
  reversed_index = 0

  # Checks each character of the original string for special characters
  s.chars.each do |c|

    # If it's special character, insert at the index position of the reversed string
    if c.match(/[a-zA-Z]/).nil?
      reversed.insert(reversed_index, c)
    end
    reversed_index += 1
  end

  reversed.join
end

puts solution("ab-cd") # dc-ba
# puts solution("z<*zj") # j<*zz
# puts solution("a-bC-dEf=ghij!!") # j-ih-gfE=dCba!!

