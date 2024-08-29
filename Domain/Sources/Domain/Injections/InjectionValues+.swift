import Common
import Foundation

public extension InjectedValues {
  /// ActivityValidator注入オブジェクトインスタンス
  var activityValidator: ActivityValidator {
    get { Self[ActivityValidatorKey.self] }
    set { Self[ActivityValidatorKey.self] = newValue }
  }
}
