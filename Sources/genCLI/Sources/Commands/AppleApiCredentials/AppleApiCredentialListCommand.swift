//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List Apple API credentials for a specific Bitrise user
struct AppleApiCredentialListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppleApiCredentialList",
        abstract: "List Apple API credentials for a specific user"
    )

    @Argument var userSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.AppleApiCredentials.AppleApiCredentialList.Request(userSlug: userSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}