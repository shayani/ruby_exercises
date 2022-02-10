# https://app.codility.com/demo/results/trainingPQ59KV-WE8/
# 100%

def solution(s)

  stack = []

  s.chars.each do |c|
    if c == "{" or c == "[" or c == "("
      stack.push(c)
    else
      p = stack.pop
      if c == ")"
        return 0 unless p == "("
      end
      if c == "]"
        return 0 unless p == "["
      end
      if c == "}"
        return 0 unless p == "{"
      end
    end
  end

  if stack.size == 0
    1
  else
    0
  end
end

puts solution("{[()()]}") # 1
puts solution("([)()]") # 0
puts solution("{{{{") # 0
