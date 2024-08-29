//
//  ActivityAppServiceTests.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import XCTest
import Common
import Infrastructure
@testable import Application

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
