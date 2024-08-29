import Common
import Domain
import Foundation
import Infrastructure

public struct ActivityAppService {
  // リポジトリ
  @Injected(\.activityRepository) private var repository
  @Injected(\.activityValidator) private var validator

  public func fetchData() async throws -> ActivityDTO {
    let domain = try await repository.fetch()
    try validator.validate(activity: domain)
    return ActivityDTO(from: domain)
  }
}
