//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Get the details of a specific app by providing the app slug. You can get the app slug by calling the [/apps](https://api-docs.bitrise.io/#/application/app-list) endpoint or by opening the app on bitrise.io and copying the slug from the URL.
struct AppShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppShow",
        abstract: "Get a specific app"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Application.AppShow.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}