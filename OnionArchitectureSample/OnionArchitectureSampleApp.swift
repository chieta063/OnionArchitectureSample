//
//  OnionArchitectureSampleApp.swift
//  OnionArchitectureSample
//
//  Created by 阿部紘明 on 2024/08/21.
//

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
