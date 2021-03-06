//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0BuildCertificateUpdateParams: APIModel {

    public var certificatePassword: String?

    public var isExpose: Bool?

    public var isProtected: Bool?

    public var processed: Bool?

    public init(certificatePassword: String? = nil, isExpose: Bool? = nil, isProtected: Bool? = nil, processed: Bool? = nil) {
        self.certificatePassword = certificatePassword
        self.isExpose = isExpose
        self.isProtected = isProtected
        self.processed = processed
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        certificatePassword = try container.decodeIfPresent("certificate_password")
        isExpose = try container.decodeIfPresent("is_expose")
        isProtected = try container.decodeIfPresent("is_protected")
        processed = try container.decodeIfPresent("processed")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(certificatePassword, forKey: "certificate_password")
        try container.encodeIfPresent(isExpose, forKey: "is_expose")
        try container.encodeIfPresent(isProtected, forKey: "is_protected")
        try container.encodeIfPresent(processed, forKey: "processed")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildCertificateUpdateParams else { return false }
      guard self.certificatePassword == object.certificatePassword else { return false }
      guard self.isExpose == object.isExpose else { return false }
      guard self.isProtected == object.isProtected else { return false }
      guard self.processed == object.processed else { return false }
      return true
    }

    public static func == (lhs: V0BuildCertificateUpdateParams, rhs: V0BuildCertificateUpdateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
