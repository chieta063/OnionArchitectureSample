import Common
import Domain
import Foundation

public struct ActivityRepositoryKey: InjectionKey {
  public static var currentValue: ActivityRepositoryProtocol = ActivityRepository()
}
