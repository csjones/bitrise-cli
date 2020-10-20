import ArgumentParser
import BitriseAPI

struct AppShowCommand: AuthenticatedClientCommand {
    static var configuration = CommandConfiguration(
        commandName: "app-show",
        abstract: "Get the details of a specific app by providing the app slug."
    )

    @Argument var slug: String

    @OptionGroup var auth: AuthOptions

    func run() throws {
        client
            .call(API.Application.AppShow.Request(appSlug: slug))
            .waitUntilDone()
    }
}
