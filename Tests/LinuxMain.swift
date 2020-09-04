import XCTest

import bitrise_cliTests

var tests = [XCTestCaseEntry]()
tests += bitrise_cliTests.allTests()
XCTMain(tests)
