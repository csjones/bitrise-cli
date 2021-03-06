//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Upload a new bitrise.yml for your application.
struct AppConfigCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppConfigCreate",
        abstract: "Upload a new bitrise.yml for your application."
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var body: V0AppConfigRequestArgument

    func run() throws {
        let request = Bitrise.AppSetup.AppConfigCreate.Request(appSlug: appSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}

