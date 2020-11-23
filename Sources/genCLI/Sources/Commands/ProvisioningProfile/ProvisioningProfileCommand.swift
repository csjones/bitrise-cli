//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

struct ProvisioningProfileCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "ProvisioningProfile",
        abstract: "",
        subcommands: [
            ProvisioningProfileConfirmCommand.self,
            ProvisioningProfileCreateCommand.self,
            ProvisioningProfileDeleteCommand.self,
            ProvisioningProfileListCommand.self,
            ProvisioningProfileShowCommand.self,
            ProvisioningProfileUpdateCommand.self
        ]
        // defaultSubcommand: AppListCommand.self
    )
}