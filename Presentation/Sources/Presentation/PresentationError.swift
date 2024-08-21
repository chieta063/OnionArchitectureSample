import Foundation

public enum PresentationError: Error, LocalizedError {
  case somethingWrong
  public var errorDescription: String {
    switch self {
    case .somethingWrong:
      "Something went wrong."
    }
  }
}
