import Common
import Foundation

/// ActivityAppServiceの注入Key
public struct ActivityAppServiceKey: InjectionKey {
  public static var currentValue: ActivityAppService = .init()
}
