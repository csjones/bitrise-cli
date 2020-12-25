//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0UserProfileRespModel: APIModel {

    public var data: V0UserProfileDataModel?

    public init(data: V0UserProfileDataModel? = nil) {
        self.data = data
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeIfPresent("data")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0UserProfileRespModel else { return false }
      guard self.data == object.data else { return false }
      return true
    }

    public static func == (lhs: V0UserProfileRespModel, rhs: V0UserProfileRespModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
