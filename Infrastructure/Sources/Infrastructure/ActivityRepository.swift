import Foundation
import Domain

public struct ActivityRepository: ActivityRepositoryProtocol {
  public func fetch() async throws -> [Activity] {
    return [
      .init(id: .init(), name: "Activity1"),
      .init(id: .init(), name: "Activity2")
    ]
  }
}
