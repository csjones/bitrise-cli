//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Shows the authenticated users profile data
struct UserProfileCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "UserProfile",
        abstract: "Get your profile data"
    )

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = Bitrise.User.UserProfile.Request()

        client
            .call(request)
            .waitUntilDone()
    }
}
