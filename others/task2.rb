def solution(s)

  rev = s.chars.reverse.select { |c| !c.match(/[a-zA-Z]/).nil? }

  res = rev
  res_index = 0
  s.chars.each_with_index do |c,index|

    if c.match(/[a-zA-Z]/).nil? # é caracter especial
      res.insert(res_index, c)
    end
    res_index += 1
  end

  res.join
end

# print solution("ab-cd") # "dc-ba"
# print solution("z<*zj") # "dc-ba"
print solution("a-bC-dEf=ghij!!")
