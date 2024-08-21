import Foundation
import Common
import Domain

extension InjectedValues {
  public var activityRepository: ActivityRepositoryProtocol {
    get { Self[ActivityRepositoryKey.self] }
    set { Self[ActivityRepositoryKey.self] = newValue }
  }
}
