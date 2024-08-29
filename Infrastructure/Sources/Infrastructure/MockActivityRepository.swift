import Domain
import Foundation

/// Activity管理用MockRepository
public struct MockActivityRepository: ActivityRepositoryProtocol {
  public init() {}

  public func fetch() async throws -> Activity {
    return Activity(id: "1234567", name: "MockActivity1")
  }
}
