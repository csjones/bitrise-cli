//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

struct AndroidKeystoreFileCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "AndroidKeystoreFile",
        abstract: "",
        subcommands: [
            AndroidKeystoreFileCreateCommand.self,
            AndroidKeystoreFileListCommand.self
        ]
    )
}