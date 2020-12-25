//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Add a new Android keystore file to an app
struct AndroidKeystoreFileCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AndroidKeystoreFileCreate",
        abstract: "Create an Android keystore file"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var body: V0AndroidKeystoreFileUploadArguments

    func run() throws {
        let request = Bitrise.AndroidKeystoreFile.AndroidKeystoreFileCreate.Request(appSlug: appSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}

