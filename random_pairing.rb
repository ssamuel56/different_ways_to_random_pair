def pair_students(students)
  randoms = students.shuffle
  arr = Array.new
  until randoms == []
    if randoms.length > 3 || randoms.length == 2
      arr << randoms.shift(2)
    elsif randoms.length == 1
      arr << randoms.shift(1)
    else
      arr << randoms.shift(3)
    end
  end
  p arr
  return arr
end
