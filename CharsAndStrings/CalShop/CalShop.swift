let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"
let space : Character = " "
let exclamation : Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy \(occasion) \(name)\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return """
  Congratulations \(name)!
  Class of \(year)
  """
}

func costOf(sign: String) -> Int {
  var price = 20

  for _ in sign {
    price += 2
  }

  return price
}

print(buildSign(for: birthday, name: "Otto"))
print(graduationFor(name: "Padma", year: 2023))
print(costOf(sign: "Happy Birthday Grandma!"))
