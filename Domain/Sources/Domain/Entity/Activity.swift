import Foundation

/// Activityドメインモデル
/// IDは７桁固定
/// Nameは空文字を許容しない
public struct Activity: Decodable {
  enum CodingKeys: String, CodingKey {
    case id = "key"
    case name = "activity"
  }
  
  /// ID
  public let id: String
  /// Activity名
  public let name: String

  public init(id: String, name: String) {
    self.id = id
    self.name = name
  }

  public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(String.self, forKey: .id)
    name = try container.decode(String.self, forKey: .name)
  }
}
