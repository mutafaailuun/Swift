//SOLUTION 1

func century(_ year: Int) -> Int {
  let abad = year / 100
  if year % 100 != 0 {
    return abad + 1
  }

  return abad
}

//SOLUTION 2
func century(_ year: Int) -> Int {
  return Int((Double(year) / 100).rounded(.up))
}

//SOLUTION 3
func century(_ year: Int) -> Int {
  let century = year % 100 == 0 ? (year / 100) : (year / 100) + 1
  return century
}

//SOLUTION 4
func century(_ year: Int) -> Int {
  return (year + 99) / 100
}

print(century(1710))
