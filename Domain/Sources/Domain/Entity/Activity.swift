//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation

public struct Activity {
  public let id: UUID
  public let name: String
  
  public init(id: UUID, name: String) {
    self.id = id
    self.name = name
  }
}
