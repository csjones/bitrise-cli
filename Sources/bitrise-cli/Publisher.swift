//
//  Publisher.swift
//  
//
//  Created by csjones on 9/6/20.
//

import Combine
import Dispatch
import Foundation

extension Publisher where Output: Encodable {
    /// Print the result and end the script.
    func waitUntilDone() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let done = DispatchWorkItem {}
        receive(
            subscriber: Subscribers.Sink(
                receiveCompletion: { completion in
                    switch completion {
                        case .failure(let error):
//                            if let error = error as? ErrorType {
//                                let data = try! encoder.encode(error)
//                                Swift.print("Error:", String(data: data, encoding: .utf8)!)
//                            } else if let error = error as? OAuth2Error {
//                                let data = try! encoder.encode(error)
//                                Swift.print("Error:", String(data: data, encoding: .utf8)!)
//                            } else {
                                Swift.print("Error:", error)
//                            }
                        case .finished:
                            break
                    }
                    DispatchQueue.global().async(execute: done)
                },
                receiveValue: { success in
                    let data = try! encoder.encode(success)
                    Swift.print("Success:", String(data: data, encoding: .utf8)!)
                }
            )
        )

        done.wait()
    }
}
