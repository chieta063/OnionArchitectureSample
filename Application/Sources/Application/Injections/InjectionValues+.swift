import Common
import Foundation

public extension InjectedValues {
  /// ActivityAppService注入オブジェクトインスタンス
  var activityAppService: ActivityAppService {
    get { Self[ActivityAppServiceKey.self] }
    set { Self[ActivityAppServiceKey.self] = newValue }
  }
}
