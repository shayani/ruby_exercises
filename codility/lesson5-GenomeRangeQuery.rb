def solution(s, p, q)
  minimals = []

  (0..p.size - 1).each do |index|
    sequencia = s[(p[index]..q[index])]
    a = sequencia.include?("A") ? 1 : 0
    c = sequencia.include?("C") ? 2 : 0
    g = sequencia.include?("G") ? 3 : 0
    t = sequencia.include?("T") ? 4 : 0
    arr = [a,c,g,t].reject { |v| v.zero? }
    minimals.append(arr.min)
  end
  minimals
end


print  solution("CAGCCTA", [2,5,0], [4,5,6]) #[2,4,1]
