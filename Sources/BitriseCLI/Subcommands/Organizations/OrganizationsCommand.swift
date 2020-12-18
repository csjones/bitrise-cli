//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

struct OrganizationsCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "Organizations",
        abstract: "",
        subcommands: [
            OrgListCommand.self,
            OrgShowCommand.self
        ]
    )
}