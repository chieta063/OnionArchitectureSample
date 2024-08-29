@testable import Application
import Common
import Infrastructure
import XCTest

final class ActivityAppServiceTests: XCTestCase {
  override class func setUp() {
    InjectedValues[\.activityRepository] = MockActivityRepository()
  }

  func testCheckActivityNameNotEmpty() async throws {
    let appService = InjectedValues[\.activityAppService]
    let result = try await appService.fetchData()
    await XCTContext.runActivity(named: "IDチェック") { _ in
      XCTAssertEqual(result.id, "123456")
    }
    await XCTContext.runActivity(named: "Nameチェック") { _ in
      XCTAssertEqual(result.name, "MockActivity1")
    }
  }
}
