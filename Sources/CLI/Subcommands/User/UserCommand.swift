//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

struct UserCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "User",
        abstract: "",
        subcommands: [
            UserPlanCommand.self,
            UserProfileCommand.self,
            UserShowCommand.self
        ]
    )
}