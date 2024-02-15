func add(_ n: Int) -> ((Int) -> Int) {
  return { return $0 + n }
}

var addOne = add(1)
print(addOne(5))
//easy understanding way

func reduce(_ n: Int) -> ((Int) -> Int) {
  return { x in
    x - n
  }
}

var minusOne = reduce(1)
print(minusOne(5))
