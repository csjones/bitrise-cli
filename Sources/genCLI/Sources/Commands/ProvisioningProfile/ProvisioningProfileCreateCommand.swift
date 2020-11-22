//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Create a temporary pre-signed upload URL (expires in 10 minutes) for the provisioning profile and upload it to AWS with a simple `curl` request. To complete the upload process, continue with the [POST /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-confirm) endpoint. Read more in our [Creating and uploading an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#creating--uploading-an-ios-code-signing-file) guide.
struct ProvisioningProfileCreateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "ProvisioningProfileCreate",
        abstract: "Create a provisioning profile"
    )

    @Argument var appSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.ProvisioningProfile.ProvisioningProfileCreate.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}