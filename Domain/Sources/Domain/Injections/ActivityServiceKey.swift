import Foundation
import Common

public struct ActivityServiceKey: InjectionKey {
  static public var currentValue: ActivityService = ActivityService()
}
