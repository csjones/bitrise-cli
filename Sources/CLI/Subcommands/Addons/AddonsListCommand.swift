//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// List all the available Bitrise addons
struct AddonsListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AddonsList",
        abstract: "Get list of available Bitrise addons"
    )

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = Bitrise.Addons.AddonsList.Request()

        client
            .call(request)
            .waitUntilDone()
    }
}

