import Foundation

/// オブジェクト注入KeyProtocol
public protocol InjectionKey {
  associatedtype Value

  /// DIオブジェクトインスタンス
  static var currentValue: Self.Value { get set }
}
