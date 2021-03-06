//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AppleAPICredentialResponseItem: APIModel {

    public var createdAt: String?

    public var issuerId: String?

    public var keyId: String?

    public var name: String?

    public var slug: String?

    public var updatedAt: String?

    public init(createdAt: String? = nil, issuerId: String? = nil, keyId: String? = nil, name: String? = nil, slug: String? = nil, updatedAt: String? = nil) {
        self.createdAt = createdAt
        self.issuerId = issuerId
        self.keyId = keyId
        self.name = name
        self.slug = slug
        self.updatedAt = updatedAt
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        createdAt = try container.decodeIfPresent("created_at")
        issuerId = try container.decodeIfPresent("issuer_id")
        keyId = try container.decodeIfPresent("key_id")
        name = try container.decodeIfPresent("name")
        slug = try container.decodeIfPresent("slug")
        updatedAt = try container.decodeIfPresent("updated_at")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(createdAt, forKey: "created_at")
        try container.encodeIfPresent(issuerId, forKey: "issuer_id")
        try container.encodeIfPresent(keyId, forKey: "key_id")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(updatedAt, forKey: "updated_at")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppleAPICredentialResponseItem else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.issuerId == object.issuerId else { return false }
      guard self.keyId == object.keyId else { return false }
      guard self.name == object.name else { return false }
      guard self.slug == object.slug else { return false }
      guard self.updatedAt == object.updatedAt else { return false }
      return true
    }

    public static func == (lhs: V0AppleAPICredentialResponseItem, rhs: V0AppleAPICredentialResponseItem) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
