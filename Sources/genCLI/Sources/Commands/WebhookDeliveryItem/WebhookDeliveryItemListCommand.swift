//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the delivery items of an outgoing webhook of a Bitrise application
struct WebhookDeliveryItemListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "WebhookDeliveryItemList",
        abstract: "List the webhook delivery items of an app"
    )

    @Argument var appSlug: String
    @Argument var appWebhookSlug: String
    @Option var next: String?
    @Option var limit: Int?

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.WebhookDeliveryItem.WebhookDeliveryItemList.Request(appSlug: appSlug, appWebhookSlug: appWebhookSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}