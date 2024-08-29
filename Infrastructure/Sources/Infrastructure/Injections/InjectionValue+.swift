import Common
import Domain
import Foundation

public extension InjectedValues {
  var activityRepository: ActivityRepositoryProtocol {
    get { Self[ActivityRepositoryKey.self] }
    set { Self[ActivityRepositoryKey.self] = newValue }
  }
}
