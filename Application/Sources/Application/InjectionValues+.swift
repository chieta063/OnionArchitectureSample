//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common

extension InjectedValues {
  public var activityAppService: ActivityAppService {
    get { Self[ActivityAppServiceKey.self] }
    set { Self[ActivityAppServiceKey.self] = newValue }
  }
}
