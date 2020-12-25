//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0BuildTriggerParamsHookInfo: APIModel {

    /** Should be "bitrise" */
    public var type: String?

    public init(type: String? = nil) {
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        type = try container.decodeIfPresent("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildTriggerParamsHookInfo else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: V0BuildTriggerParamsHookInfo, rhs: V0BuildTriggerParamsHookInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
