//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Get the bitrise.yml file of one of the builds of a given app. This will return the `bitrise.yml` configuration with which the build ran. You can compare it to [the current bitrise.yml configuration](https://api-docs.bitrise.io/#/application/app-config-datastore-show) of the app.
struct BuildBitriseYmlShowCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildBitriseYmlShow",
        abstract: "Get the bitrise.yml of a build"
    )

    @Argument var appSlug: String
    @Argument var buildSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.Builds.BuildBitriseYmlShow.Request(appSlug: appSlug, buildSlug: buildSlug))
//            .await()
            .waitUntilDone()
    }
}