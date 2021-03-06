//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0BuildTriggerParams: APIModel {

    public var buildParams: V0BuildTriggerParamsBuildParams?

    public var hookInfo: V0BuildTriggerParamsHookInfo?

    public init(buildParams: V0BuildTriggerParamsBuildParams? = nil, hookInfo: V0BuildTriggerParamsHookInfo? = nil) {
        self.buildParams = buildParams
        self.hookInfo = hookInfo
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        buildParams = try container.decodeIfPresent("build_params")
        hookInfo = try container.decodeIfPresent("hook_info")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(buildParams, forKey: "build_params")
        try container.encodeIfPresent(hookInfo, forKey: "hook_info")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildTriggerParams else { return false }
      guard self.buildParams == object.buildParams else { return false }
      guard self.hookInfo == object.hookInfo else { return false }
      return true
    }

    public static func == (lhs: V0BuildTriggerParams, rhs: V0BuildTriggerParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
