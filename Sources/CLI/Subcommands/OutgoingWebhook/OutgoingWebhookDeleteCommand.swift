//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Delete an existing outgoing webhook for a specified Bitrise app.
struct OutgoingWebhookDeleteCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "OutgoingWebhookDelete",
        abstract: "Delete an outgoing webhook of an app"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var appWebhookSlug: String

    func run() throws {
        let request = Bitrise.OutgoingWebhook.OutgoingWebhookDelete.Request(appSlug: appSlug, appWebhookSlug: appWebhookSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}

