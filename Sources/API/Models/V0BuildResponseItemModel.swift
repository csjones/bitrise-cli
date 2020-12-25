//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//
// Template used API+CLI
// https://github.com/csjones/SwagGen-templates
//

import Foundation

public class V0BuildResponseItemModel: APIModel {

    public var abortReason: String?

    public var branch: String?

    public var buildNumber: Int?

    public var commitHash: String?

    public var commitMessage: String?

    public var commitViewURL: String?

    public var environmentPrepareFinishedAt: String?

    public var finishedAt: String?

    public var isOnHold: Bool?

    public var machineTypeId: String?

    public var originalBuildParams: String?

    public var pullRequestId: Int?

    public var pullRequestTargetBranch: String?

    public var pullRequestViewURL: String?

    public var slug: String?

    public var stackIdentifier: String?

    public var startedOnWorkerAt: String?

    public var status: Int?

    public var statusText: String?

    public var tag: String?

    public var triggeredAt: String?

    public var triggeredBy: String?

    public var triggeredWorkflow: String?

    public init(abortReason: String? = nil, branch: String? = nil, buildNumber: Int? = nil, commitHash: String? = nil, commitMessage: String? = nil, commitViewURL: String? = nil, environmentPrepareFinishedAt: String? = nil, finishedAt: String? = nil, isOnHold: Bool? = nil, machineTypeId: String? = nil, originalBuildParams: String? = nil, pullRequestId: Int? = nil, pullRequestTargetBranch: String? = nil, pullRequestViewURL: String? = nil, slug: String? = nil, stackIdentifier: String? = nil, startedOnWorkerAt: String? = nil, status: Int? = nil, statusText: String? = nil, tag: String? = nil, triggeredAt: String? = nil, triggeredBy: String? = nil, triggeredWorkflow: String? = nil) {
        self.abortReason = abortReason
        self.branch = branch
        self.buildNumber = buildNumber
        self.commitHash = commitHash
        self.commitMessage = commitMessage
        self.commitViewURL = commitViewURL
        self.environmentPrepareFinishedAt = environmentPrepareFinishedAt
        self.finishedAt = finishedAt
        self.isOnHold = isOnHold
        self.machineTypeId = machineTypeId
        self.originalBuildParams = originalBuildParams
        self.pullRequestId = pullRequestId
        self.pullRequestTargetBranch = pullRequestTargetBranch
        self.pullRequestViewURL = pullRequestViewURL
        self.slug = slug
        self.stackIdentifier = stackIdentifier
        self.startedOnWorkerAt = startedOnWorkerAt
        self.status = status
        self.statusText = statusText
        self.tag = tag
        self.triggeredAt = triggeredAt
        self.triggeredBy = triggeredBy
        self.triggeredWorkflow = triggeredWorkflow
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        abortReason = try container.decodeIfPresent("abort_reason")
        branch = try container.decodeIfPresent("branch")
        buildNumber = try container.decodeIfPresent("build_number")
        commitHash = try container.decodeIfPresent("commit_hash")
        commitMessage = try container.decodeIfPresent("commit_message")
        commitViewURL = try container.decodeIfPresent("commit_view_url")
        environmentPrepareFinishedAt = try container.decodeIfPresent("environment_prepare_finished_at")
        finishedAt = try container.decodeIfPresent("finished_at")
        isOnHold = try container.decodeIfPresent("is_on_hold")
        machineTypeId = try container.decodeIfPresent("machine_type_id")
        originalBuildParams = try container.decodeIfPresent("original_build_params")
        pullRequestId = try container.decodeIfPresent("pull_request_id")
        pullRequestTargetBranch = try container.decodeIfPresent("pull_request_target_branch")
        pullRequestViewURL = try container.decodeIfPresent("pull_request_view_url")
        slug = try container.decodeIfPresent("slug")
        stackIdentifier = try container.decodeIfPresent("stack_identifier")
        startedOnWorkerAt = try container.decodeIfPresent("started_on_worker_at")
        status = try container.decodeIfPresent("status")
        statusText = try container.decodeIfPresent("status_text")
        tag = try container.decodeIfPresent("tag")
        triggeredAt = try container.decodeIfPresent("triggered_at")
        triggeredBy = try container.decodeIfPresent("triggered_by")
        triggeredWorkflow = try container.decodeIfPresent("triggered_workflow")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(abortReason, forKey: "abort_reason")
        try container.encodeIfPresent(branch, forKey: "branch")
        try container.encodeIfPresent(buildNumber, forKey: "build_number")
        try container.encodeIfPresent(commitHash, forKey: "commit_hash")
        try container.encodeIfPresent(commitMessage, forKey: "commit_message")
        try container.encodeIfPresent(commitViewURL, forKey: "commit_view_url")
        try container.encodeIfPresent(environmentPrepareFinishedAt, forKey: "environment_prepare_finished_at")
        try container.encodeIfPresent(finishedAt, forKey: "finished_at")
        try container.encodeIfPresent(isOnHold, forKey: "is_on_hold")
        try container.encodeIfPresent(machineTypeId, forKey: "machine_type_id")
        try container.encodeIfPresent(originalBuildParams, forKey: "original_build_params")
        try container.encodeIfPresent(pullRequestId, forKey: "pull_request_id")
        try container.encodeIfPresent(pullRequestTargetBranch, forKey: "pull_request_target_branch")
        try container.encodeIfPresent(pullRequestViewURL, forKey: "pull_request_view_url")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(stackIdentifier, forKey: "stack_identifier")
        try container.encodeIfPresent(startedOnWorkerAt, forKey: "started_on_worker_at")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(statusText, forKey: "status_text")
        try container.encodeIfPresent(tag, forKey: "tag")
        try container.encodeIfPresent(triggeredAt, forKey: "triggered_at")
        try container.encodeIfPresent(triggeredBy, forKey: "triggered_by")
        try container.encodeIfPresent(triggeredWorkflow, forKey: "triggered_workflow")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildResponseItemModel else { return false }
      guard self.abortReason == object.abortReason else { return false }
      guard self.branch == object.branch else { return false }
      guard self.buildNumber == object.buildNumber else { return false }
      guard self.commitHash == object.commitHash else { return false }
      guard self.commitMessage == object.commitMessage else { return false }
      guard self.commitViewURL == object.commitViewURL else { return false }
      guard self.environmentPrepareFinishedAt == object.environmentPrepareFinishedAt else { return false }
      guard self.finishedAt == object.finishedAt else { return false }
      guard self.isOnHold == object.isOnHold else { return false }
      guard self.machineTypeId == object.machineTypeId else { return false }
      guard self.originalBuildParams == object.originalBuildParams else { return false }
      guard self.pullRequestId == object.pullRequestId else { return false }
      guard self.pullRequestTargetBranch == object.pullRequestTargetBranch else { return false }
      guard self.pullRequestViewURL == object.pullRequestViewURL else { return false }
      guard self.slug == object.slug else { return false }
      guard self.stackIdentifier == object.stackIdentifier else { return false }
      guard self.startedOnWorkerAt == object.startedOnWorkerAt else { return false }
      guard self.status == object.status else { return false }
      guard self.statusText == object.statusText else { return false }
      guard self.tag == object.tag else { return false }
      guard self.triggeredAt == object.triggeredAt else { return false }
      guard self.triggeredBy == object.triggeredBy else { return false }
      guard self.triggeredWorkflow == object.triggeredWorkflow else { return false }
      return true
    }

    public static func == (lhs: V0BuildResponseItemModel, rhs: V0BuildResponseItemModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
