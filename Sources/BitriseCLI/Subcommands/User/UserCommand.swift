//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

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