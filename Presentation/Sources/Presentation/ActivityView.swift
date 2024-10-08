import Application
import SwiftUI

/// Activityを表示するView
public struct ActivityView: View {
  @EnvironmentObject private var presenter: ActivityPresenter

  public init() {}

  public var body: some View {
    NavigationStack {
      if presenter.isLoading {
        ProgressView()
      } else {
        Text(presenter.data?.name ?? "データなし")
      }
    }
    .task {
      if presenter.data == nil {
        await presenter.fetchData()
      }
    }
    .alert("Error", isPresented: .constant(presenter.error != nil)) {
      Button("閉じる") {}
    }
  }
}

#Preview("Exists Data") {
  ActivityView()
    .environmentObject(ActivityPresenter(data: .init(id: UUID().uuidString, name: "Activity1")))
}

#Preview("Loading") {
  ActivityView()
    .environmentObject(ActivityPresenter(isLoading: true))
}

#Preview("Eror") {
  ActivityView()
    .environmentObject(ActivityPresenter(error: PreviewError.somethingWrong))
}
