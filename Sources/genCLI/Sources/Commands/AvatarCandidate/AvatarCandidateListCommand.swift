//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all available avatar candidates for an application
struct AvatarCandidateListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AvatarCandidateList",
        abstract: "Get list of the avatar candidates"
    )

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String

    func run() throws {
        let request = API.AvatarCandidate.AvatarCandidateList.Request(appSlug: appSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}