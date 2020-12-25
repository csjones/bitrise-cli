//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AvatarPromoteParams: APIModel {

    public var isPromoted: Bool

    public init(isPromoted: Bool) {
        self.isPromoted = isPromoted
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isPromoted = try container.decode("is_promoted")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(isPromoted, forKey: "is_promoted")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AvatarPromoteParams else { return false }
      guard self.isPromoted == object.isPromoted else { return false }
      return true
    }

    public static func == (lhs: V0AvatarPromoteParams, rhs: V0AvatarPromoteParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
