@propertyWrapper
public struct Clamped<T: Comparable>
{
 private var value: T
 private let range: ClosedRange<T>

 public init(wrappedValue: T, _ range: ClosedRange<T>)
 {
  self.range = range
  self.value = min(max(wrappedValue, range.lowerBound), range.upperBound)
 }

 public var wrappedValue: T
 {
  get { value }
  set { value = min(max(newValue, range.lowerBound), range.upperBound) }
 }
}

extension Clamped: Codable where T: Codable {}
