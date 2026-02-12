func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var totalNumOfBirds: Int = 0

  for bird in birdsPerDay {
    totalNumOfBirds += bird
  }

  return totalNumOfBirds
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  let startIndex = (weekNumber - 1) * 7
  let endIndex = startIndex + 7
  let birdsForAWeek = Array(birdsPerDay[startIndex..<endIndex])
  return totalBirdCount(birdsForAWeek)
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixedBirdsLog = birdsPerDay

  for i in stride(from: 0, to: fixedBirdsLog.count, by: 2) {
    fixedBirdsLog[i] += 1
  }

  return fixedBirdsLog
}