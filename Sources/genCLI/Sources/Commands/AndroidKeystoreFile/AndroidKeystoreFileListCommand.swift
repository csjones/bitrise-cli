//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the android keystore files that have been uploaded to a specific app.
struct AndroidKeystoreFileListCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "AndroidKeystoreFileList",
        abstract: "Get a list of the android keystore files"
    )

    @Argument var appSlug: String
    @Option var next: String?
    @Option var limit: Int?

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.AndroidKeystoreFile.AndroidKeystoreFileList.Request(appSlug: appSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}