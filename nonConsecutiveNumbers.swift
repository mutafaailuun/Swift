//SOLUTION 1

func allNonConsecutive(_ arr: [Int]) -> [(Int, Int)] {

  var tupleArray = [(Int, Int)]()

  for element in 1..<arr.count {
    if arr[element] != arr[element - 1] + 1 {
      tupleArray.append((element, arr[element]))
    }
  }
  return tupleArray
}

//SOLUTION 2
func allNonConsecutive(_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
}

//SOLUTION 3
func allNonConsecutive(_ arr: [Int]) -> [(Int, Int)] {
  return arr.enumerated().dropFirst()
    .filter { offset, element in arr[offset - 1] + 1 != element }
}

//SOLUTION 4
func allNonConsecutive(_ arr: [Int]) -> [(Int, Int)] {

  return arr.enumerated()
    .dropFirst()
    .filter { arr[$0.0 - 1] != $0.1 - 1 }

}

var array = [1, 2, 3, 4, 6, 7, 8, 15, 16]
print(allNonConsecutive(array))

//output
// [
//   (4, 6),
//   (7, 15),
// ]
