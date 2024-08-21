//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common
import Domain

public struct ActivityRepositoryKey: InjectionKey {
  public static var currentValue: ActivityRepositoryProtocol = ActivityRepository()
}
