//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class AddonsDeveloperLink: APIModel {

    public var title: String?

    public var url: String?

    public init(title: String? = nil, url: String? = nil) {
        self.title = title
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        title = try container.decodeIfPresent("title")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AddonsDeveloperLink else { return false }
      guard self.title == object.title else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: AddonsDeveloperLink, rhs: AddonsDeveloperLink) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}