import ArgumentParser

public struct BitriseCLI: ParsableCommand {
    public static var configuration = CommandConfiguration(
        commandName: "br",
        abstract: "A utility for interacting with the Bitrise API.",
        subcommands: [
            ApplicationCommand.self,
        ])

    public init() {}
}