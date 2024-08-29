import Common
import Foundation

public struct ActivityAppServiceKey: InjectionKey {
  public static var currentValue: ActivityAppService = .init()
}
