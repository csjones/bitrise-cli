//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all build artifacts that have been generated for an app's build. You can use the created build artifact slugs from the response output to retrieve data of a specific build artifact with the [GET/apps/](https://api-docs.bitrise.io/#/build-artifact/artifact-show) endpoint or update a build artifact with the [PATCH/apps](https://api-docs.bitrise.io/#/build-artifact/artifact-update) endpoint.
struct ArtifactListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "ArtifactList",
        abstract: "Get a list of all build artifacts"
    )

    @Argument var appSlug: String
    @Argument var buildSlug: String
    @Option var next: String?
    @Option var limit: Int?

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.BuildArtifact.ArtifactList.Request(appSlug: appSlug, buildSlug: buildSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}