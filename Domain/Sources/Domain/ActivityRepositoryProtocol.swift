import Foundation

/// Activity管理用のRepository Protocol
public protocol ActivityRepositoryProtocol {
  func fetch() async throws -> Activity
}
