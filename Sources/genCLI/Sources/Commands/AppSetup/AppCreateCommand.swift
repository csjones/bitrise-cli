//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Add a new app to Bitrise. This is the first step of the app registration process. To successfully set it up, you need to provide the required app parameters: your git provider, the repository URL, the slug of the repository as it appears at the provider, and the slug of the owner of the repository. Read more about the app creation process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).
struct AppCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppCreate",
        abstract: "Add a new app"
    )


    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.AppSetup.AppCreate.Request()

        client
            .call(request)
            .waitUntilDone()
    }
}