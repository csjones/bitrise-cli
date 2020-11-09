//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the provisioned addons for the authorized apps
struct AddonListByAppCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "AddonListByApp",
        abstract: "Get list of the addons for apps"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.Addons.AddonListByApp.Request(appSlug: appSlug))
//            .await()
            .waitUntilDone()
    }
}