func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment = price / 60.0
  var buyStatement: String
  
  if monthlyPayment <= monthlyBudget {
    buyStatement = "Yes! I'm getting a \(vehicle)"
  } else if monthlyPayment <= monthlyBudget * 1.10 {
    buyStatement = "I'll have to be frugal if I want a \(vehicle)"
  } else {
    buyStatement = "Darn! No \(vehicle) for me"
  }

  return buyStatement
}

func licenseType(numberOfWheels wheels: Int) -> String {
  var licenseStatement: String
  
  if wheels >= 2 && wheels <= 3 {
    licenseStatement = "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    licenseStatement = "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    licenseStatement = "You will need a commercial trucking license for your vehicle"
  } else {
    licenseStatement = "We do not issue licenses for those types of vehicles"
  }

  return licenseStatement
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  var resellPriceAsDouble: Double

  if yearsOld < 3 {
    resellPriceAsDouble = 0.8 * Double(originalPrice)
  } else if yearsOld >= 10 {
    resellPriceAsDouble = 0.5 * Double(originalPrice)
  } else {
    resellPriceAsDouble = 0.7 * Double(originalPrice)
  }

  return Int(resellPriceAsDouble)
}
