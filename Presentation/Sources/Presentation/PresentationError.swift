//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation

public enum PresentationError: Error, LocalizedError {
  case somethingWrong
  public var errorDescription: String {
    switch self {
    case .somethingWrong:
      "Something went wrong."
    }
  }
}
