//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Show information about a specific user
struct UserShowCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "UserShow",
        abstract: "Get a specific user"
    )

    @Argument var userSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.User.UserShow.Request(userSlug: userSlug))
//            .await()
            .waitUntilDone()
    }
}