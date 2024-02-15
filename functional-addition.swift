func add(_ n: Int) -> ((Int) -> Int) {
  return { return $0 + n }
}

var addOne = add(1)
print(addOne(5))
