import Foundation

public struct Activity: Decodable {
  enum CodingKeys: String, CodingKey {
    case id = "key"
    case name = "activity"
  }
  
  public let id: String
  public let name: String
  
  public init(id: String, name: String) {
    self.id = id
    self.name = name
  }
  
  public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(String.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
  }
}
