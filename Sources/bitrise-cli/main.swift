import ArgumentParser
import Foundation
import bitrise_api
import Combine
import Dispatch

struct bitrise_cli: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "bitrise-cli",
        abstract: "A utility for interacting with the Bitrise API.",
        subcommands: [
            Application.self,
        ]
    )

    init() {}
}

extension bitrise_cli {
    struct Application: ParsableCommand {
        static var configuration = CommandConfiguration(
            commandName: "application",
            abstract: "List all the apps available for the authenticated account, including those that are owned by other users or Organizations."
        )

        func run() throws {
            print("APP")
            /// Something we can wait on at the very end of the script.

            APIClient.default.defaultHeaders["Authorization"] = "qnmzR29EuEa0pdJ0EIh-BaNzJMNYPpPvg-eUvrzdU6HjwBpw6NIcJ_2tbEsEXexG0Fuitg9VHo3Qa2bwgHGgnw"

            let done = DispatchWorkItem {}
            let request = API.Application.AppList.Request()
            

            print("API.Server.main \(API.Server.main)")
            print("request.path \(request.path)")
            print("request.headers \(request.headers)")
            
            
            
            APIClient.default
                .call(request)
                .receive(
                    subscriber: Subscribers.Sink(
                        receiveCompletion: { completion in
                            switch completion {
                                case .failure(let error):
                                    print("\(error.localizedDescription)")
                                case .finished:
                                    print("Finished")
                            }
                            DispatchQueue.global().async(execute: done)
                        },
                        receiveValue: { user in
                            print("GetUser returned user \(user)")
                        }
                    )
                )

            done.wait()
//            let appListRequest = API.Application.AppList.Request()
//            let apiClient = APIClient.default

//            let task = apiClient.makeRequest(appListRequest) { apiResponse in
//                print("apiResponse \(apiResponse)")
                // switch apiResponse {
                //     case .result(let apiResponseValue):
                //         if let user = apiResponseValue.success {
                //             print("GetUser returned user \(user)")
                //         } else {
                //             print("GetUser returned \(apiResponseValue)")
                //         }
                //     case .error(let apiError):
                //         print("GetUser failed with \(apiError)")
                // }
//            }
        }
    }
}

extension bitrise_cli {
    struct AppList: ParsableCommand {
        static var configuration = CommandConfiguration(
            commandName: "application",
            abstract: "List all the apps available for the authenticated account, including those that are owned by other users or Organizations."
        )

        func run() throws {
            print("Hello, world!")
            API.Application.AppList.Request()
        }
    }
}

bitrise_cli.main()
