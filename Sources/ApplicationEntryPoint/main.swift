import BitriseCLI

        // func run() throws {
        //     APIClient.default.defaultHeaders["Authorization"] = "qnmzR29EuEa0pdJ0EIh-BaNzJMNYPpPvg-eUvrzdU6HjwBpw6NIcJ_2tbEsEXexG0Fuitg9VHo3Qa2bwgHGgnw"

        //     let done = DispatchWorkItem {}
        //     let request = API.Application.AppList.Request()

        //     print("API.Server.main \(API.Server.main)")
        //     print("request.path \(request.path)")
        //     print("request.headers \(request.headers)")

        //     APIClient.default
        //         .call(request)
        //         .receive(
        //             subscriber: Subscribers.Sink(
        //                 receiveCompletion: { completion in
        //                     switch completion {
        //                         case .failure(let error):
        //                             print("\(error.localizedDescription)")
        //                         case .finished:
        //                             print("Finished")
        //                     }
        //                     DispatchQueue.global().async(execute: done)
        //                 },
        //                 receiveValue: { user in
        //                     print("GetUser returned user \(user)")
        //                 }
        //             )
        //         )
        //     done.wait()
        // }

BitriseCLI.main()
