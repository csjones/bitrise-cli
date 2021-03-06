//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Retrieve data of a specific provisioning profile. You can fetch the provisioning profile's slug if you call the [GET /apps/{app-slug}/provisioning-profiles](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-list) endpoint. Read more in our [Getting a specific iOS code signing file's data](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#getting-a-specific-ios-code-signing-files-data) guide.
struct ProvisioningProfileShowCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "ProvisioningProfileShow",
        abstract: "Get a specific provisioning profile"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var provisioningProfileSlug: String

    func run() throws {
        let request = Bitrise.ProvisioningProfile.ProvisioningProfileShow.Request(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}

