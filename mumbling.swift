func accum(_ s: String) -> String {

  var results = ""
  for (index, char) in s.enumerated() {
    let repeatedChar = String(repeating: char, count: index)
    results += "\(char.uppercased())\(repeatedChar.lowercased())-"
  }
  return String(results.dropLast())
}

//OUTPUT
//accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
