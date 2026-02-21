func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func secretFunc(_ passwordStr: String) -> String {
    if password == passwordStr {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }

  return secretFunc
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstCombinationNum = f(room)
  let secondCombinationNum = f(firstCombinationNum)
  let thirdCombinationNum = f(secondCombinationNum)

  return (firstCombinationNum, secondCombinationNum, thirdCombinationNum)
}
