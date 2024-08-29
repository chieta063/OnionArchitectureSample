import Domain
import Foundation

/// Activity管理用Repository
public struct ActivityRepository: ActivityRepositoryProtocol {
  public func fetch() async throws -> Activity {
    var request = URLRequest(url: URL(string: "https://bored-api.appbrewery.com/random")!)
    request.httpMethod = "GET"
    let (data, _) = try await URLSession.shared.data(for: request)
    let activity = try JSONDecoder().decode(Activity.self, from: data)
    return activity
  }
}
