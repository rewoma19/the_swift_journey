func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

// Should return 480.0
print(dailyRateFrom(hourlyRate: 60))

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthRateWithNoDiscount = dailyRateFrom(hourlyRate: hourlyRate) * 22.0
  let discountRate = discount / 100
  let monthRateWithDiscount = monthRateWithNoDiscount - (discountRate * monthRateWithNoDiscount)
  return monthRateWithDiscount.rounded()
}

// Should return 12129
print(monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5))

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let discountRate = withDiscount / 100
  let discountedDailyRate = dailyRate * (1 - discountRate)
  let numOfWorkdays = budget / discountedDailyRate
  return numOfWorkdays.rounded(.down)
}

// Should return 35.0
print(workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11.0))