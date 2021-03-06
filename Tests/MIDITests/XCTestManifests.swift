#if !canImport(ObjectiveC)
import XCTest

extension FrequencyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__FrequencyTests = [
        ("testFromFrequency", testFromFrequency),
        ("testOffset", testOffset),
        ("testToFrequency", testToFrequency),
    ]
}

extension MIDITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MIDITests = [
        ("testNumber", testNumber),
    ]
}

extension PitchNoteTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PitchNoteTests = [
        ("testNoteFromPitchFlat", testNoteFromPitchFlat),
        ("testNoteFromPitchNatural", testNoteFromPitchNatural),
        ("testNoteFromPitchSharp", testNoteFromPitchSharp),
    ]
}

extension PitchTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PitchTests = [
        ("testDescription", testDescription),
        ("testFromNotePitch", testFromNotePitch),
        ("testPitch", testPitch),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FrequencyTests.__allTests__FrequencyTests),
        testCase(MIDITests.__allTests__MIDITests),
        testCase(PitchNoteTests.__allTests__PitchNoteTests),
        testCase(PitchTests.__allTests__PitchTests),
    ]
}
#endif
