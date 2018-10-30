def making_pairs(students)
  h = {}
  shuffled = students.shuffle
  groups = 1
  until shuffled.length == 0
    if shuffled.length > 3 || shuffled.length == 2
      h["group#{groups}"] = shuffled[0], shuffled[1]
      shuffled.delete_at(0) && shuffled.delete_at(0)
    elsif shuffled.length == 3
      h["group#{groups}"] = shuffled[0], shuffled[1], shuffled[-1]
      shuffled.delete_at(0) && shuffled.delete_at(0) && shuffled.delete_at(-1)
    else shuffled.length == 1
      h["group#{groups}"] = shuffled[0]
      shuffled.delete_at(0)
    end
    groups += 1
  end
  p h
  return h
end
