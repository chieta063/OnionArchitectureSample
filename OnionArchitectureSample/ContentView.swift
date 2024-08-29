//
//  ContentView.swift
//  OnionArchitectureSample
//
//  Created by 阿部紘明 on 2024/08/21.
//

import SwiftUI
import Presentation

struct ContentView: View {
  @State var isPresentedActivity = false
  var body: some View {
    VStack {
      Button("Activity") {
        isPresentedActivity = true
      }
    }
    .fullScreenCover(isPresented: $isPresentedActivity, content: {
      ActivityView()
        .environmentObject(ActivityPresenter())
    })
  }
}

#Preview {
  ContentView()
}
