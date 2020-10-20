
import ArgumentParser
import Foundation

struct AuthOptions: ParsableArguments {
    enum Error: Swift.Error {
        case apiTokenNotProvided
    }

    @Option(
        // default: .environment("APPSTORE_CONNECT_ISSUER_ID"),
        help: ArgumentHelp(
            "A Bitrise Personal Access Token.",
            discussion:
                """
                The value for this option can be obtained from the Bitrise Account Settings page.
                If not specified on the command line this value will be read from the environment variable BITRISE_API_TOKEN.
                """,
            valueName: "string"
        )
    )
    var apiToken: String
}