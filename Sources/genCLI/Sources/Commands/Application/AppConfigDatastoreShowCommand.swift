//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Get the full `bitrise.yml` configuration of an application, by providing the app slug. It returns the current `bitrise.yml` that is stored on bitrise.io in full, including the trigger map, the different workflows and the Steps.
struct AppConfigDatastoreShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppConfigDatastoreShow",
        abstract: "Get bitrise.yml of a specific app"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String

    func run() throws {
        let request = API.Application.AppConfigDatastoreShow.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}