import Foundation
import Common
import Domain

public struct ActivityRepositoryKey: InjectionKey {
  public static var currentValue: ActivityRepositoryProtocol = ActivityRepository()
}
