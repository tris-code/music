import XCTest

import MIDITests
import MusicTests

var tests = [XCTestCaseEntry]()
tests += MIDITests.__allTests()
tests += MusicTests.__allTests()

XCTMain(tests)
