//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import SwiftUI

extension EnvironmentValues {
  public var activityPresenter: ActivityPresenter {
    get { self[ActivityPresenterKey.self] }
    set { self[ActivityPresenterKey.self] = newValue }
  }
}
