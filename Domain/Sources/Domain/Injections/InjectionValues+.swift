import Common
import Foundation

extension InjectedValues {
  public var activityValidator: ActivityValidator {
    get {
      Self[ActivityValidatorKey.self]
    }
    set {
      Self[ActivityValidatorKey.self] = newValue
    }
  }
}
