//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the apps available for the authenticated account, including those that are owned by other users or Organizations.
struct AppListCommand: AuthenticatedCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppList",
        abstract: "Get list of the apps"
    )

    @OptionGroup var auth: AuthOptions
    @Option var sortBy: API.Application.AppList.SortBy?
    @Option var next: String?
    @Option var limit: Int?

    func run() throws {
        let request = API.Application.AppList.Request(sortBy: sortBy, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}

extension API.Application.AppList.SortBy: ExpressibleByArgument { }