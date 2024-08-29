import Foundation

public protocol ActivityRepositoryProtocol {
  func fetch() async throws -> Activity
}
