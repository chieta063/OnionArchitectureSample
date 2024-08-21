//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common

public struct ActivityAppServiceKey: InjectionKey {
  public static var currentValue: ActivityAppService = .init()
}
