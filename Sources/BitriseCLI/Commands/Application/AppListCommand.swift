import ArgumentParser
import BitriseAPI

struct AppListCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "app-list",
        abstract: "List all the apps available for the authenticated account, including those that are owned by other users or Organizations."
    )

    func run() throws {
        print("Hello, world!")
        API.Application.AppList.Request()
    }
}