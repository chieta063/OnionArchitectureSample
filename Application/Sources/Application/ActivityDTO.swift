import Domain
import Foundation

/// ActivityドメインのDTO
public struct ActivityDTO: Identifiable {
  /// ID
  public let id: String
  /// 名前
  public let name: String

  public init(from domain: Activity) {
    id = domain.id
    name = domain.name
  }

  public init(id: String, name: String) {
    self.id = id
    self.name = name
  }
}
