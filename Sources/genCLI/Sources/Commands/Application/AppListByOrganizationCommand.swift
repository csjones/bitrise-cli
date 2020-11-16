//
// BitriseCLI app generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import ArgumentParser
import BitriseAPI

// List all the available apps owned by a given organization. [Find the organization URL](https://devcenter.bitrise.io/team-management/organizations/org-url/) of the organisations you are part of; be aware that the endpoint will not return any apps if the authenticated account is not a member of the given organisation.
struct AppListByOrganizationCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "AppListByOrganization",
        abstract: "Get list of the apps for an organization"
    )

    @Argument var orgSlug: String
    @Option var sortBy: SortBy?
    @Option var next: String?
    @Option var limit: Int?

    @OptionGroup var auth: AuthOptions

    func run() throws {
        let request = API.Application.AppListByOrganization.Request(orgSlug: orgSlug, sortBy: sortBy, next: next, limit: limit)

        client
            .call(request)
            .waitUntilDone()
    }
}