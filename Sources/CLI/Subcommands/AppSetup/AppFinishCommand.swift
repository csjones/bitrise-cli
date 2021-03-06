//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Save the application after registering it on Bitrise and registering an SSH key (and, optionally, adding a webhook). With this endpoint you can define the initial configuration, define application-level environment variables, determine the project type, and set an Organization to be the owner of the app. Read more about the app registration process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).
struct AppFinishCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppFinish",
        abstract: "Save the application at the end of the app registration process"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var body: V0AppFinishArguments

    func run() throws {
        let request = Bitrise.AppSetup.AppFinish.Request(appSlug: appSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}

