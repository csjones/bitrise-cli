//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all Bitrise organizations that the user is part of
struct OrgListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "OrgList",
        abstract: "List the organizations that the user is part of"
    )

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Organizations.OrgList.Request()

        client
            .call(request)
            .waitUntilDone()
    }
}

