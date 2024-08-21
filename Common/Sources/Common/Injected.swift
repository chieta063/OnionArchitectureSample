//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation

@propertyWrapper
public struct Injected<T> {
  private let keyPath: WritableKeyPath<InjectedValues, T>
  
  public var wrappedValue: T {
    get { InjectedValues[keyPath] }
    set { InjectedValues[keyPath] = newValue }
  }
  
  public init(_ keyPath: WritableKeyPath<InjectedValues, T>) {
    self.keyPath = keyPath
  }
}
