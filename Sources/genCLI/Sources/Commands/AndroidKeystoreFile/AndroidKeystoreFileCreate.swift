//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Add a new Android keystore file to an app
struct AndroidKeystoreFileCreateCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "AndroidKeystoreFileCreate",
        abstract: "Create an Android keystore file"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.AndroidKeystoreFile.AndroidKeystoreFileCreate.Request(appSlug: appSlug))
//            .await()
            .waitUntilDone()
    }
}