import Common
import Domain
import Foundation
import Infrastructure

public struct ActivityAppService {
  // リポジトリ
  @Injected(\.activityRepository) private var repository

  public func fetchData() async throws -> ActivityDTO {
    return try ActivityDTO(from: await repository.fetch())
  }
}
