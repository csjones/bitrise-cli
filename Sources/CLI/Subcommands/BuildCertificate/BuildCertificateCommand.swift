//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

struct BuildCertificateCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildCertificate",
        abstract: "",
        subcommands: [
            BuildCertificateConfirmCommand.self,
            BuildCertificateCreateCommand.self,
            BuildCertificateDeleteCommand.self,
            BuildCertificateListCommand.self,
            BuildCertificateShowCommand.self,
            BuildCertificateUpdateCommand.self
        ]
    )
}