import Foundation
import Domain

public struct ActivityDTO: Identifiable {
  public let id: String
  public let name: String
  
  public init(from domain: Activity) {
    self.id = domain.id
    self.name = domain.name
  }
  
  public init(id: String, name: String) {
    self.id = id
    self.name = name
  }
}
