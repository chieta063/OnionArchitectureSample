import Foundation
import Common

extension InjectedValues {
  public var activityAppService: ActivityAppService {
    get { Self[ActivityAppServiceKey.self] }
    set { Self[ActivityAppServiceKey.self] = newValue }
  }
}
