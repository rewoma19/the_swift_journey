func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diameter = diameter,
        let slices = slices, 
        diameter >= 0,
        slices >= 1
  else { return nil }
  let circleRadius = diameter / 2.0
  let circleArea = Double.pi * (circleRadius * circleRadius)
  let size = circleArea / Double(slices)
  return size
}
func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let areaForA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaForB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB)) 
  
  switch (areaForA, areaForB) {
  case let (a?, nil):
    return "Slice A is bigger"
  case let (nil, b?):
    return "Slice B is bigger"
  case let (a?, b?):
      if a > b {
        return "Slice A is bigger"
      } else if b > a {
        return "Slice B is bigger"
      } else {
        return "Neither slice is bigger"
      }
  default:
    return "Neither slice is bigger"
  }
}
