//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class AddonsSetupGuide: APIModel {

    public var instructions: [AddonsSetupInstruction]?

    public var notification: String?

    public init(instructions: [AddonsSetupInstruction]? = nil, notification: String? = nil) {
        self.instructions = instructions
        self.notification = notification
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        instructions = try container.decodeArrayIfPresent("instructions")
        notification = try container.decodeIfPresent("notification")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(instructions, forKey: "instructions")
        try container.encodeIfPresent(notification, forKey: "notification")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AddonsSetupGuide else { return false }
      guard self.instructions == object.instructions else { return false }
      guard self.notification == object.notification else { return false }
      return true
    }

    public static func == (lhs: AddonsSetupGuide, rhs: AddonsSetupGuide) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
