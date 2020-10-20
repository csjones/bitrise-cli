import ArgumentParser
import BitriseAPI

protocol AuthenticatedClientCommand: ParsableCommand {
    var auth: AuthOptions { get }
    var client: APIClient { get }
}

extension AuthenticatedClientCommand {
    var client: APIClient {
        APIClient.default.defaultHeaders["Authorization"] = auth.apiToken

        return APIClient.default
    }
}