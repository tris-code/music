import XCTest

extension CalculationsTests {
    static let __allTests = [
        ("testFromFrequency", testFromFrequency),
        ("testOffset", testOffset),
        ("testToFrequency", testToFrequency),
    ]
}

extension ConvertionTests {
    static let __allTests = [
        ("testNoteFromPitchFlat", testNoteFromPitchFlat),
        ("testNoteFromPitchNatural", testNoteFromPitchNatural),
        ("testNoteFromPitchSharp", testNoteFromPitchSharp),
    ]
}

extension NoteTests {
    static let __allTests = [
        ("testName", testName),
        ("testNote", testNote),
        ("testNoteDescription", testNoteDescription),
        ("testPitch", testPitch),
        ("testPitchDescription", testPitchDescription),
    ]
}

extension PitchTests {
    static let __allTests = [
        ("testDescription", testDescription),
        ("testFromNotePitch", testFromNotePitch),
        ("testPitch", testPitch),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CalculationsTests.__allTests),
        testCase(ConvertionTests.__allTests),
        testCase(NoteTests.__allTests),
        testCase(PitchTests.__allTests),
    ]
}
#endif
