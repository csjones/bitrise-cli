//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the generic project files that have been uploaded to a specific app. Read more in our [Listing the uploaded files of an app](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#listing-the-uploaded-files-of-an-app) guide.
struct GenericProjectFileListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "GenericProjectFileList",
        abstract: "Get a list of the generic project files"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Option var next: String?
    @Option var limit: Int?

    func run() throws {
        let request = API.GenericProjectFile.GenericProjectFileList.Request(appSlug: appSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}

