func newScoreBoard() -> [String: Int] {
  let highScoreDict: [String: Int] = [:]
  return highScoreDict
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name, default: 0] = score 
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores[name] = nil
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  if scores.keys.contains(name) {
    scores[name] = 0
  }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if let newScore = scores[name] {
    scores[name] = newScore + delta
  }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
 return scores.sorted { $0.key < $1.key }
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  return scores.sorted { $0.value > $1.value }
}
