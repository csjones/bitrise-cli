//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

struct WebhookDeliveryItemCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "WebhookDeliveryItem",
        abstract: "",
        subcommands: [
            WebhookDeliveryItemListCommand.self,
            WebhookDeliveryItemRedeliverCommand.self,
            WebhookDeliveryItemShowCommand.self
        ]
    )
}