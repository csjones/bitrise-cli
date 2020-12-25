//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0AppUploadParams: APIModel {

    /** The slug of the owner of the repository at the git provider */
    public var gitOwner: String

    /** The slug of the repository at the git provider */
    public var gitRepoSlug: String

    /** If `true` then the repository visibility setting will be public, in case of `false` it will be private */
    public var isPublic: Bool

    /** The git provider you are using, it can be `github`, `bitbucket`, `gitlab`, `gitlab-self-hosted` or `custom` */
    public var provider: String

    /** The URL of your repository */
    public var repoURL: String

    /** It has to be provided by legacy reasons and has to have the `git` value */
    public var type: String

    public init(gitOwner: String, gitRepoSlug: String, isPublic: Bool, provider: String, repoURL: String, type: String) {
        self.gitOwner = gitOwner
        self.gitRepoSlug = gitRepoSlug
        self.isPublic = isPublic
        self.provider = provider
        self.repoURL = repoURL
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        gitOwner = try container.decode("git_owner")
        gitRepoSlug = try container.decode("git_repo_slug")
        isPublic = try container.decode("is_public")
        provider = try container.decode("provider")
        repoURL = try container.decode("repo_url")
        type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(gitOwner, forKey: "git_owner")
        try container.encode(gitRepoSlug, forKey: "git_repo_slug")
        try container.encode(isPublic, forKey: "is_public")
        try container.encode(provider, forKey: "provider")
        try container.encode(repoURL, forKey: "repo_url")
        try container.encode(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppUploadParams else { return false }
      guard self.gitOwner == object.gitOwner else { return false }
      guard self.gitRepoSlug == object.gitRepoSlug else { return false }
      guard self.isPublic == object.isPublic else { return false }
      guard self.provider == object.provider else { return false }
      guard self.repoURL == object.repoURL else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: V0AppUploadParams, rhs: V0AppUploadParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}