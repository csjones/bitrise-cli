//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Create an outgoing webhook for a specified Bitrise app: this can be used to send build events to a specified URL with custom headers. Currently, only build events can trigger outgoing webhooks.
struct OutgoingWebhookCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "OutgoingWebhookCreate",
        abstract: "Create an outgoing webhook for an app"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.OutgoingWebhook.OutgoingWebhookCreate.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}