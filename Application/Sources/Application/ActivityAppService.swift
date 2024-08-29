import Common
import Domain
import Foundation
import Infrastructure

/// Activity用ApplicationService
public struct ActivityAppService {
  @Injected(\.activityRepository) private var repository
  @Injected(\.activityValidator) private var validator
  
  /// データを取得する
  /// - Returns: 取得したデータのDTO
  public func fetchData() async throws -> ActivityDTO {
    let domain = try await repository.fetch()
    try validator.validate(activity: domain)
    return ActivityDTO(from: domain)
  }
}
