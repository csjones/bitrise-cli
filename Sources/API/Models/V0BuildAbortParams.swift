//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0BuildAbortParams: APIModel {

    public var abortReason: String

    public var abortWithSuccess: Bool

    public var skipNotifications: Bool

    public init(abortReason: String, abortWithSuccess: Bool, skipNotifications: Bool) {
        self.abortReason = abortReason
        self.abortWithSuccess = abortWithSuccess
        self.skipNotifications = skipNotifications
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        abortReason = try container.decode("abort_reason")
        abortWithSuccess = try container.decode("abort_with_success")
        skipNotifications = try container.decode("skip_notifications")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(abortReason, forKey: "abort_reason")
        try container.encode(abortWithSuccess, forKey: "abort_with_success")
        try container.encode(skipNotifications, forKey: "skip_notifications")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildAbortParams else { return false }
      guard self.abortReason == object.abortReason else { return false }
      guard self.abortWithSuccess == object.abortWithSuccess else { return false }
      guard self.skipNotifications == object.skipNotifications else { return false }
      return true
    }

    public static func == (lhs: V0BuildAbortParams, rhs: V0BuildAbortParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
