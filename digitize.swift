//my solution
func digitize(_ num: Int) -> [Int] {
  var result: [Int] = []
  var n = num

  if n == 0 {
    result.append(n)
  }

  while n > 0 {
    let digit = n % 10
    result.append(digit)
    n /= 10
  }

  return result
}

print(digitize(17876))
//5673, 4 --> 5
