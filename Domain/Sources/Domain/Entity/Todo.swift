//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/29.
//

import Foundation

public struct Todo: Codable {
  public let id: UUID
  public let title: String
  public let isDone: Bool
}
