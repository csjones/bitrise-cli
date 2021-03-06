//
// Bitrise app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import API

// Update an uploaded build certificate's attributes. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint. Read more in our [Updating an uploaded iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.
struct BuildCertificateUpdateCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "BuildCertificateUpdate",
        abstract: "Update a build certificate"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var buildCertificateSlug: String
    @Argument var body: V0BuildCertificateUpdateArguments

    func run() throws {
        let request = Bitrise.BuildCertificate.BuildCertificateUpdate.Request(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}

