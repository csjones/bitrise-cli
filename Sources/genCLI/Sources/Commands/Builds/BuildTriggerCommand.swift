//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Trigger a new build. Specify an app slug and at least one parameter out of three: a git tag or git commit hash, a branch, or a workflow ID. You can also set specific parameters for Pull Request builds and define additional environment variables for your build. [Check out our detailed guide](https://devcenter.bitrise.io/api/build-trigger/).
struct BuildTriggerCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildTrigger",
        abstract: "Trigger a new build"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Builds.BuildTrigger.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}