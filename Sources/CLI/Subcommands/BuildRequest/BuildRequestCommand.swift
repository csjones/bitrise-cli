//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

struct BuildRequestCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildRequest",
        abstract: "",
        subcommands: [
            BuildRequestListCommand.self,
            BuildRequestUpdateCommand.self
        ]
    )
}