//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

struct ApplicationCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "Application",
        abstract: "",
        subcommands: [
            AppConfigDatastoreShowCommand.self,
            AppListCommand.self,
            AppListByOrganizationCommand.self,
            AppListByUserCommand.self,
            AppShowCommand.self,
            BranchListCommand.self,
        ]
        // defaultSubcommand: AppListCommand.self
    )
}