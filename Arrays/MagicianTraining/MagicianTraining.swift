func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index < stack.count && index >= 0 else { return stack }

  var stackCopy = stack
  stackCopy[index] = newCard
  return stackCopy
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var stackCopy = stack
  stackCopy.append(newCard)
  return stackCopy
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard index < stack.count && index >= 0 else { return stack }
  var stackCopy = stack
  stackCopy.remove(at: index)
  return stackCopy
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  guard index <= stack.count && index >= 0 else { return stack }
  var stackCopy = stack
  stackCopy.insert(newCard, at: index)
  return stackCopy
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}