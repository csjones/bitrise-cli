//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the available apps for the given user.  It needs the user slug that you can get from the [GET /me](https://api-docs.bitrise.io/#/user/user-profile) endpoint.
struct AppListByUserCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppListByUser",
        abstract: "Get list of the apps for a user"
    )

    @Argument var userSlug: String
    @Option var sortBy: SortBy?
    @Option var next: String?
    @Option var limit: Int?

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Application.AppListByUser.Request(userSlug: userSlug, sortBy: sortBy, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}