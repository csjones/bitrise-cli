//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Get the specified delivery item of an outgoing webhook of a Bitrise application
struct WebhookDeliveryItemShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "WebhookDeliveryItemShow",
        abstract: "Get a specific delivery item of a webhook"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var appWebhookSlug: String
    @Argument var webhookDeliveryItemSlug: String

    func run() throws {
        let request = API.WebhookDeliveryItem.WebhookDeliveryItemShow.Request(appSlug: appSlug, appWebhookSlug: appWebhookSlug, webhookDeliveryItemSlug: webhookDeliveryItemSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}

