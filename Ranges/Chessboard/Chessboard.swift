// TODO: define the 'ranks' constant
let ranks = 1...8
// TODO: define the 'files' constant
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  return ranks.contains(rank) && files.contains(file)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  // Each row should have the length of 8
  // For every row starting from 1, we have to offset the start and end by 8
  let startIndex = (rank - 1) * 8
  let endIndex = startIndex + 8

  return Array(board[startIndex..<endIndex])
}