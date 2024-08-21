import Foundation
import Common
import Infrastructure
import Domain

public struct ActivityAppService {
  // リポジトリ
  @Injected(\.activityRepository) private var repository
  // ドメインサービス
  @Injected(\.activityService) private var service
  
  public func fetchData() async throws -> [ActivityDTO] {
    service.doSomething()
    let result = try await repository.fetch()
    return result.map {
      ActivityDTO(from: $0)
    }
  }
}
