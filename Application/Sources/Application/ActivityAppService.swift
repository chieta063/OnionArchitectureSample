//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common
import Infrastructure
import Domain

public struct ActivityAppService {
  @Injected(\.activityRepository) private var repository
  @Injected(\.activityService) private var service
  
  public func fetchData() async throws -> [ActivityDTO] {
    service.doSomething()
    let result = try await repository.fetch()
    return result.map {
      ActivityDTO(from: $0)
    }
  }
}
