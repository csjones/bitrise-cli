//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the provisioned addons for the authorized apps
struct AddonListByAppCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AddonListByApp",
        abstract: "Get list of the addons for apps"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String

    func run() throws {
        let request = API.Addons.AddonListByApp.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}