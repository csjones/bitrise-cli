import ArgumentParser

public struct BitriseCLI: ParsableCommand {
    public static var configuration = CommandConfiguration(
        commandName: "bitrise-cli",
        abstract: "A utility for interacting with the Bitrise API.",
        subcommands: [
            ApplicationCommand.self,
        ])

    public init() {}
}