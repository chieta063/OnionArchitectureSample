import Domain
import Foundation

public struct ActivityDTO: Identifiable {
  public let id: String
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
