import Foundation
import SwiftUI

extension EnvironmentValues {
  public var activityPresenter: ActivityPresenter {
    get { self[ActivityPresenterKey.self] }
    set { self[ActivityPresenterKey.self] = newValue }
  }
}
