//
//  ActivityValidator.swift
//
//
//  Created by 阿部紘明 on 2024/08/29.
//

import Foundation

/// Activity用Validator
/// Activityの制約に則ってValidationを行う
public struct ActivityValidator {
  private enum ValidationError: Error, LocalizedError {
    case invalidId
    case nameIsEmpty
    var errorDescription: String? {
      switch self {
      case .invalidId:
        "Invalid Id"
      case .nameIsEmpty:
        "Name is Empty"
      }
    }
  }

  public func validate(activity: Activity) throws {
    if activity.id.count != 7 {
      throw ValidationError.invalidId
    }
    if !activity.name.isEmpty {
      return
    }
    throw ValidationError.nameIsEmpty
  }
}
