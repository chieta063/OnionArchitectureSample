//
//  SwiftUIView.swift
//
//
//  Created by 阿部紘明 on 2024/08/21.
//

import SwiftUI
import Application

struct ActivityView: View {
  @Environment(\.activityPresenter) private var presenter
  var body: some View {
    NavigationStack {
      List(presenter.dataList) { activity in
        VStack(alignment: .leading) {
          Text(activity.name)
            .font(.caption)
          Text(activity.id)
            .font(.caption2)
            .foregroundStyle(Color(.systemGray))
        }
      }
    }
  }
}

#Preview("Exists Data") {
  ActivityView()
    .environment(\.activityPresenter, .init(dataList: [
      .init(id: UUID().uuidString, name: "Activity1")
    ]))
}

#Preview("Loading") {
  ActivityView()
    .environment(\.activityPresenter, .init(isLoading: true))
}

#Preview("Eror") {
  ActivityView()
    .environment(\.activityPresenter, .init(error: PresentationError.somethingWrong))
}
