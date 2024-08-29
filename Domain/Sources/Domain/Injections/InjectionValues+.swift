import Common
import Foundation

extension InjectedValues {
  /// ActivityValidator注入オブジェクトインスタンス
  public var activityValidator: ActivityValidator {
    get { Self[ActivityValidatorKey.self] }
    set { Self[ActivityValidatorKey.self] = newValue }
  }
}
