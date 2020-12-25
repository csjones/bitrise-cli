//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Abort a specific build. Set an abort reason with the `abort_reason` parameter. Use the `abort_with_success` parameter to abort a build but still count it as a successful one.
struct BuildAbortCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildAbort",
        abstract: "Abort a specific build"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var buildSlug: String
    @Argument var body: V0BuildAbortArguments

    func run() throws {
        let request = Bitrise.Builds.BuildAbort.Request(appSlug: appSlug, buildSlug: buildSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}
