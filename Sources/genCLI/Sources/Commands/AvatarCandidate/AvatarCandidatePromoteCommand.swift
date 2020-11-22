//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// Promotes an avatar candidate for an app
struct AvatarCandidatePromoteCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AvatarCandidatePromote",
        abstract: "Promote an avatar candidate"
    )

    @Argument var appSlug: String
    @Argument var avatarSlug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.AvatarCandidate.AvatarCandidatePromote.Request(appSlug: appSlug, avatarSlug: avatarSlug)

        client
            .call(request)
            .waitUntilDone()
    }
}