import Foundation
import Domain

public struct MockActivityRepository: ActivityRepositoryProtocol {
  public init() {}
  
  public func fetch() async throws -> Activity {
    return Activity(id: "123456", name: "MockActivity1")
  }
}
