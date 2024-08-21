import Foundation
import Domain

public struct MockActivityRepository: ActivityRepositoryProtocol {
  public init() {}
  
  public func fetch() async throws -> [Activity] {
    return [
      Activity(id: .init(), name: "MockActivity1"),
      Activity(id: .init(), name: "MockActivity2")
    ]
  }
}
