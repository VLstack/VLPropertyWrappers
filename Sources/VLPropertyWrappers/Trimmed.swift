import VLStringKit

@propertyWrapper
public struct Trimmed
{
 private var value: String = ""

 public init(wrappedValue: String)
 {
  self.wrappedValue = wrappedValue.trimmed
 }

 public var wrappedValue: String
 {
  get { value }
  set { value = newValue.trimmed }
 }
}

extension Trimmed: Codable {}
