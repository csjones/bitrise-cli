//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

struct OutgoingWebhookCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "OutgoingWebhook",
        abstract: "",
        subcommands: [
            OutgoingWebhookCreateCommand.self,
            OutgoingWebhookDeleteCommand.self,
            OutgoingWebhookListCommand.self,
            OutgoingWebhookUpdateCommand.self
        ]
    )
}