//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Show information about a specific user
struct UserShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "UserShow",
        abstract: "Get a specific user"
    )

    @Argument var userSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.User.UserShow.Request(userSlug: userSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}