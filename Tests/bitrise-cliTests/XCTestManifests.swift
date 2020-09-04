import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(bitrise_cliTests.allTests),
    ]
}
#endif
