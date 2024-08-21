import Foundation
import Common

extension InjectedValues {
  public var activityService: ActivityService {
    get { Self[ActivityServiceKey.self] }
    set { Self[ActivityServiceKey.self] = newValue}
  }
}
