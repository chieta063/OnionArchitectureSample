import Presentation
import SwiftUI

@main
struct OnionArchitectureSampleApp: App {
  var body: some Scene {
    WindowGroup {
      ActivityView().environmentObject(ActivityPresenter())
    }
  }
}
