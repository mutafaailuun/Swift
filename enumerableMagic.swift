// SOLUTION #1
func take(_ arr: [Int], _ n: Int) -> [Int] {
  var result: [Int] = []
  for (index, item) in arr.enumerated() {
    if index < n {
      result.append(item)
    }

  }

  return result
}

//SOLUTION #2
func take(_ arr: [Int], _ n: Int) -> [Int] {
  return Array(arr.prefix(n))
}

//SOLUTION #3
func take(_ arr: [Int], _ n: Int) -> [Int] {
  return arr.count > n ? Array(arr[0..<n]) : arr
}

func take(_ arr: [Int], _ n: Int) -> [Int] {
  guard n > 0 else { return [] }
  return Array(arr.prefix(n))
}

print(take([1, 9, 2, 3, 5, 7, 8], 2))
