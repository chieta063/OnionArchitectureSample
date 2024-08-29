import Common
import Foundation

public extension InjectedValues {
  var activityAppService: ActivityAppService {
    get { Self[ActivityAppServiceKey.self] }
    set { Self[ActivityAppServiceKey.self] = newValue }
  }
}
