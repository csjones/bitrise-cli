import ArgumentParser
import BitriseAPI

struct AppListCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "app-list",
        abstract: "List all apps available for the authenticated account, including those that are owned by other users or Organizations."
    )

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.Application.AppList.Request())
//            .await()
            .waitUntilDone()
    }
}
