//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AppFinishParams: APIModel {

    /** The type of your project (`android`, `ios`, `cordova`, `other`, `xamarin`, `macos`, `ionic`, `react-native`, `fastlane`, null) */
    public var projectType: String

    /** The id of the stack the application will be built (these can be found in the [system report](https://github.com/bitrise-io/bitrise.io/tree/master/system_reports) file names) */
    public var stackId: String

    /** Which config to use `default-android-config`, `default-cordova-config`, `default-fastlane-config`, `default-ionic-config`, `default-ios-config`,`default-macos-config`, `default-react-native-config`, `default-xamarin-config`, `other-config` (default if parameter is not speficied) */
    public var config: String?

    /** Environment variables for the application workflows, e.g. {"env1":"val1","env2":"val2"} */
    public var envs: [String: String]?

    /** config specification mode, has to be specified with `manual` value */
    public var mode: String?

    /** The slug of the organization, who will be the owner of the application, if it's not specified, then the authenticated user will be the owner */
    public var organizationSlug: String?

    public init(projectType: String, stackId: String, config: String? = nil, envs: [String: String]? = nil, mode: String? = nil, organizationSlug: String? = nil) {
        self.projectType = projectType
        self.stackId = stackId
        self.config = config
        self.envs = envs
        self.mode = mode
        self.organizationSlug = organizationSlug
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        projectType = try container.decode("project_type")
        stackId = try container.decode("stack_id")
        config = try container.decodeIfPresent("config")
        envs = try container.decodeIfPresent("envs")
        mode = try container.decodeIfPresent("mode")
        organizationSlug = try container.decodeIfPresent("organization_slug")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(projectType, forKey: "project_type")
        try container.encode(stackId, forKey: "stack_id")
        try container.encodeIfPresent(config, forKey: "config")
        try container.encodeIfPresent(envs, forKey: "envs")
        try container.encodeIfPresent(mode, forKey: "mode")
        try container.encodeIfPresent(organizationSlug, forKey: "organization_slug")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppFinishParams else { return false }
      guard self.projectType == object.projectType else { return false }
      guard self.stackId == object.stackId else { return false }
      guard self.config == object.config else { return false }
      guard self.envs == object.envs else { return false }
      guard self.mode == object.mode else { return false }
      guard self.organizationSlug == object.organizationSlug else { return false }
      return true
    }

    public static func == (lhs: V0AppFinishParams, rhs: V0AppFinishParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
