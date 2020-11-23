//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the provisioning profiles that have been uploaded to a specific app. Read more in our [Listing the uploaded iOS code signing files of an app](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#listing-the-uploaded-ios-code-signing-files-of-an-app) guide.
struct ProvisioningProfileListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "ProvisioningProfileList",
        abstract: "Get a list of the provisioning profiles"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Option var next: String?
    @Option var limit: Int?

    func run() throws {
        let request = API.ProvisioningProfile.ProvisioningProfileList.Request(appSlug: appSlug, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}