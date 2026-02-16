func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(name: String, amount: Int)] {
  var updatedItems: [(name: String, amount: Int)] = []

  for item in items {
    if item.name == toy {
      updatedItems.append((name: item.name, amount: amount))
    } else {
      updatedItems.append(item)
    }
  }

  return updatedItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var itemWithCategory: [(name: String, amount: Int, category: String)] = []

  for item in items {
    itemWithCategory.append((name: item.name, amount: item.amount, category: category))
  }

  return itemWithCategory
}