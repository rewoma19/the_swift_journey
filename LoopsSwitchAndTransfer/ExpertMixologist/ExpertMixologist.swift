func timeToPrepare(drinks: [String]) -> Double {
  var prepTime: Double = 0
  
  for drink in drinks {
    switch drink {
    case "beer":
      prepTime += 0.5
    case "soda":
      prepTime += 0.5
    case "water":
      prepTime += 0.5
    case "shot":
      prepTime += 1.0
    case "mixed drink":
      prepTime += 1.5
    case "fancy drink":
      prepTime += 2.5
    case "frozen drink":
      prepTime += 3.0
    default:
      prepTime += 0.0
    }
  }

  return prepTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var wedgesGotten: Int = 0
  var limesCut: Int = 0
  
  for lime in limes {
    if wedgesGotten >= needed {
      break
    }

    switch lime {
    case "small":
      wedgesGotten += 6
    case "medium":
      wedgesGotten += 8
    case "large":
      wedgesGotten += 10
    default:
      wedgesGotten += 0
    }

    limesCut += 1
  }

  return limesCut
}

// func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
//   fatalError("Please implement the finishShift(minutesLeft:remainingOrders:) function")
// }

// func orderTracker(orders: [(drink: String, time: String)]) -> (
//   beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
// ) {
//   fatalError("Please implement the orderTracker(orders:) function")
// }
