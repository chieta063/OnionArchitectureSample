//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common
import Domain

extension InjectedValues {
  public var activityRepository: ActivityRepositoryProtocol {
    get { Self[ActivityRepositoryKey.self] }
    set { Self[ActivityRepositoryKey.self] = newValue }
  }
}
