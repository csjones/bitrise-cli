//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0BuildAbortResponseModel: APIModel {

    public var status: String?

    public init(status: String? = nil) {
        self.status = status
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        status = try container.decodeIfPresent("status")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(status, forKey: "status")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildAbortResponseModel else { return false }
      guard self.status == object.status else { return false }
      return true
    }

    public static func == (lhs: V0BuildAbortResponseModel, rhs: V0BuildAbortResponseModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
