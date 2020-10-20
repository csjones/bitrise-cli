import ArgumentParser

struct ApplicationCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "application",
        abstract: "Get the bitrise.yml or details of a specific app, list all branches, or list all apps for a user and/or organization.",
        subcommands: [
            AppListCommand.self,
            AppShowCommand.self
        ],
        defaultSubcommand: AppListCommand.self
    )
}
