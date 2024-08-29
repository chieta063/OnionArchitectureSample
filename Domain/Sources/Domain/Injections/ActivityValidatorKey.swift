import Common
import Foundation

/// ActivityValidatorの注入Key
public struct ActivityValidatorKey: InjectionKey {
  public static var currentValue: ActivityValidator = .init()
}
