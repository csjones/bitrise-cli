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

    @OptionGroup var auth: AuthOptions
    @Argument var appSlug: String
    @Argument var avatarSlug: String
    @Argument var body: V0AvatarPromoteArguments

    func run() throws {
        let request = API.AvatarCandidate.AvatarCandidatePromote.Request(appSlug: appSlug, avatarSlug: avatarSlug, body: body.data!)

        client
            .call(request)
            .waitUntilDone()
    }
}

