def solution(message, k)
  # write your code in Ruby 2.2

  if message.size <= k
    return message.strip
  end

  return_message = message[0..k - 1]

  if return_message[-1] == ' ' # space char
    return return_message.strip
  else
    arr = return_message.split(' ')

    unless message[k] =~ /[\s.!?]/ # a palavra está cortada, então vamos removê-la
      arr.delete(arr[-1])
    end

    arr.join(' ')
  end
end

puts solution('The quick brown fox jumps over the lazy dog', 39)
