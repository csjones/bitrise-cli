//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AddOnAppResponseItemModel: APIModel {

    public var icon: String?

    public var plan: AddonsPlan?

    public var planStartedAt: String?

    public var slug: String?

    public var title: String?

    public init(icon: String? = nil, plan: AddonsPlan? = nil, planStartedAt: String? = nil, slug: String? = nil, title: String? = nil) {
        self.icon = icon
        self.plan = plan
        self.planStartedAt = planStartedAt
        self.slug = slug
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        icon = try container.decodeIfPresent("icon")
        plan = try container.decodeIfPresent("plan")
        planStartedAt = try container.decodeIfPresent("plan_started_at")
        slug = try container.decodeIfPresent("slug")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(icon, forKey: "icon")
        try container.encodeIfPresent(plan, forKey: "plan")
        try container.encodeIfPresent(planStartedAt, forKey: "plan_started_at")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AddOnAppResponseItemModel else { return false }
      guard self.icon == object.icon else { return false }
      guard self.plan == object.plan else { return false }
      guard self.planStartedAt == object.planStartedAt else { return false }
      guard self.slug == object.slug else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: V0AddOnAppResponseItemModel, rhs: V0AddOnAppResponseItemModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
