import VLStringKit

@propertyWrapper
struct Trimmed
{
 private var value: String = ""

 public init(wrappedValue: String)
 {
  self.wrappedValue = wrappedValue.trimmed
 }

 var wrappedValue: String
 {
  get { value }
  set { value = newValue.trimmed }
 }
}
