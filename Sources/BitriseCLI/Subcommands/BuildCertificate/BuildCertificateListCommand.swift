//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the build certificates that have been uploaded to a specific app. Read more in our [Listing the uploaded iOS code signing files of an app](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#listing-the-uploaded-ios-code-signing-files-of-an-app) guide.
struct BuildCertificateListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildCertificateList",
        abstract: "Get a list of the build certificates"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Option var next: String?
    @Option var limit: Int?

    func run() throws {
        let request = API.BuildCertificate.BuildCertificateList.Request(appSlug: appSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}

