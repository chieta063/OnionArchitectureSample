import Foundation
import Common
import Infrastructure
import Domain

public struct ActivityAppService {
  // リポジトリ
  @Injected(\.activityRepository) private var repository
  
  public func fetchData() async throws -> ActivityDTO {
    return ActivityDTO(from: try await repository.fetch())
  }
}
