//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Retrieve data of a specific build artifact. The response output contains a time-limited download url (expires in 10 minutes) and a public install page URL. You can view the build artifact with both URLs, but the public install page url will not work unless you [enable it](https://devcenter.bitrise.io/tutorials/deploy/bitrise-app-deployment/#enabling-public-page-for-the-app).
struct ArtifactShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "ArtifactShow",
        abstract: "Get a specific build artifact"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var buildSlug: String
    @Argument var artifactSlug: String

    func run() throws {
        let request = API.BuildArtifact.ArtifactShow.Request(appSlug: appSlug, buildSlug: buildSlug, artifactSlug: artifactSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}