func maps(a: [Int]) -> [Int] {
  var result: [Int] = []
  for item in a {
    result.append(item * 2)
  }

  return result
  // write your code here...

}

//other solution / best practice
func maps(a: [Int]) -> [Int] {
  // return a after doubling each array value
  return a.map { $0 * 2 }
}

print(maps(a: [1, 2, 3]))
