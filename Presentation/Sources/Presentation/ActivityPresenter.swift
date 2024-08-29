import Application
import Common
import Foundation
import SwiftUI

public final class ActivityPresenter: ObservableObject {
  @Published var data: ActivityDTO?
  @Published var error: Error?
  @Published var isLoading = false

  @Injected(\.activityAppService) var service

  public init(data: ActivityDTO? = nil, error: Error? = nil, isLoading: Bool = false) {
    self.data = data
    self.error = error
    self.isLoading = isLoading
    service = service
  }

  public func fetchData() async {
    do {
      DispatchQueue.main.async {
        self.isLoading = true
      }
      let data = try await service.fetchData()
      DispatchQueue.main.async {
        self.data = data
        self.isLoading = false
      }
    } catch {
      DispatchQueue.main.async {
        self.data = nil
        self.error = error
        self.isLoading = false
      }
    }
  }
}
