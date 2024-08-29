import Common
import Domain
import Foundation

/// ActivityRepositoryの注入Key
public struct ActivityRepositoryKey: InjectionKey {
  public static var currentValue: ActivityRepositoryProtocol = ActivityRepository()
}
