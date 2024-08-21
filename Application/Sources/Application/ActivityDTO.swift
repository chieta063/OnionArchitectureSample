//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Domain

public struct ActivityDTO: Identifiable {
  public let id: String
  public let name: String
  
  init(from domain: Activity) {
    self.id = domain.id.uuidString
    self.name = domain.name
  }
}
