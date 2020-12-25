//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class AddonsPlan: APIModel {

    public var features: [AddonsFeature]?

    public var id: String?

    public var name: String?

    public var price: Int?

    public init(features: [AddonsFeature]? = nil, id: String? = nil, name: String? = nil, price: Int? = nil) {
        self.features = features
        self.id = id
        self.name = name
        self.price = price
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        features = try container.decodeArrayIfPresent("features")
        id = try container.decodeIfPresent("id")
        name = try container.decodeIfPresent("name")
        price = try container.decodeIfPresent("price")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(features, forKey: "features")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(price, forKey: "price")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AddonsPlan else { return false }
      guard self.features == object.features else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.price == object.price else { return false }
      return true
    }

    public static func == (lhs: AddonsPlan, rhs: AddonsPlan) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}