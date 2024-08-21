import Foundation
import Common

public struct ActivityAppServiceKey: InjectionKey {
  public static var currentValue: ActivityAppService = .init()
}
