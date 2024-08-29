//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/29.
//

import Foundation

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
