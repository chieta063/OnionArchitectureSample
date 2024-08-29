import Foundation

/// Previewで擬似的に表示するエラー
public enum PreviewError: Error, LocalizedError {
  case somethingWrong
  public var errorDescription: String {
    switch self {
    case .somethingWrong:
      "Something went wrong."
    }
  }
}
