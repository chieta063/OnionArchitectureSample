import Foundation

/// 注入用オブジェクト
public struct InjectedValues {
  /// インスタンス
  private static var current = InjectedValues()

  public static subscript<K>(key: K.Type) -> K.Value where K: InjectionKey {
    get { key.currentValue }
    set { key.currentValue = newValue }
  }

  public static subscript<T>(_ keyPath: WritableKeyPath<InjectedValues, T>) -> T {
    get { current[keyPath: keyPath] }
    set { current[keyPath: keyPath] = newValue }
  }
}
