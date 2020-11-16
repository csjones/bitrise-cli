//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the provisioned addons for the authenticated user
struct AddonListByUserCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "AddonListByUser",
        abstract: "Get list of the addons for user"
    )

    @Argument var userSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Addons.AddonListByUser.Request(userSlug: userSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}