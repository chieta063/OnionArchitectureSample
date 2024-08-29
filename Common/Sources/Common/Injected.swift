import Foundation

/// DIコンテナPropertyWrapper
@propertyWrapper
public struct Injected<T> {
  /// DIオブジェクトへのKeyPath
  private let keyPath: WritableKeyPath<InjectedValues, T>

  /// DIオブジェクトプロパティ
  public var wrappedValue: T {
    get { InjectedValues[keyPath] }
    set { InjectedValues[keyPath] = newValue }
  }

  public init(_ keyPath: WritableKeyPath<InjectedValues, T>) {
    self.keyPath = keyPath
  }
}
