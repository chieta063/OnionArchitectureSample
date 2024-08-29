import Common
@testable import Domain
import XCTest

final class ActivityValidatorTests: XCTestCase {
  func testValidation() throws {
    let service = ActivityValidator()

    try XCTContext.runActivity(named: "正常系") { _ in
      let activity = Activity(id: "1234567", name: "MockActivity")
      XCTAssertNoThrow(try service.validate(activity: activity))
    }

    try XCTContext.runActivity(named: "異常系（ID）") { _ in
      let activity = Activity(id: "1234", name: "Activity")
      XCTAssertThrowsError(try service.validate(activity: activity))
    }

    try XCTContext.runActivity(named: "異常系(Activity名)") { _ in
      let activity = Activity(id: "1234567", name: "")
      XCTAssertThrowsError(try service.validate(activity: activity))
    }
  }
}
