//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// List all the builds of a specified Bitrise app. Set parameters to filter builds: for example, you can search for builds run with a given workflow or all builds that were triggered by Pull Requests. It returns all the relevant data of the build.
struct BuildListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildList",
        abstract: "List all builds of an app"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Option var sortBy: Bitrise.Builds.BuildList.SortBy?
    @Option var branch: String?
    @Option var workflow: String?
    @Option var commitMessage: String?
    @Option var triggerEventType: String?
    @Option var pullRequestId: Int?
    @Option var buildNumber: Int?
    @Option var after: Int?
    @Option var before: Int?
    @Option var status: Int?
    @Option var next: String?
    @Option var limit: Int?

    func run() throws {
        let request = Bitrise.Builds.BuildList.Request(appSlug: appSlug, sortBy: sortBy, branch: branch, workflow: workflow, commitMessage: commitMessage, triggerEventType: triggerEventType, pullRequestId: pullRequestId, buildNumber: buildNumber, after: after, before: before, status: status, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}

extension Bitrise.Builds.BuildList.SortBy: ExpressibleByArgument { }