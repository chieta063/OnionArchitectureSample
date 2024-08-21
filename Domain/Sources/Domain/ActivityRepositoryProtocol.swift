//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation

public protocol ActivityRepositoryProtocol {
  func fetch() async throws -> [Activity]
}
