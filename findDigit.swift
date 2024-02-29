//SOLUTION 1 RECURSIVE

func findDigit(_ num: Int, _ nth: Int) -> Int {
  let positive = abs(num)

  guard nth > 0 else { return -1 }
  guard positive > 0 else { return 0 }
  guard nth > 1 else { return positive % 10 }

  return findDigit(positive / 10, nth - 1)
}

//SOLUTION 2
func findDigit(_ num: Int, _ nth: Int) -> Int {
  var num = num
  guard nth > 0 else { return -1 }
  guard nth > 1 else { return abs(num % 10) }
  for _ in 1..<nth { num /= 10 }
  return abs(num % 10)
}

print(findDigit(12345, 2))
