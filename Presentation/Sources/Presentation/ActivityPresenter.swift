//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import SwiftUI
import Application
import Common

public final class ActivityPresenter: ObservableObject {
  @Published var dataList: [ActivityDTO] = []
  @Published var error: Error?
  @Published var isLoading = false
  
  @Injected(\.activityAppService) var service
  
  public init(dataList: [ActivityDTO] = [], error: Error? = nil, isLoading: Bool = false) {
    self.dataList = dataList
    self.error = error
    self.isLoading = isLoading
    self.service = service
  }
  
  public func fetchData() async {
    do {
      self.isLoading = true
      self.dataList = try await service.fetchData()
      self.isLoading = false
    } catch {
      self.dataList = []
      self.error = error
      self.isLoading = false
    }
  }
}
