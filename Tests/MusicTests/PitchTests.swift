/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************/

import Test
@testable import Music

final class PitchTests: TestCase {
    func testPitch() {
        let pitch = Pitch(number: 69)
        assertEqual(pitch.number, 69)
    }

    func testDescription() {
        let a4 = Pitch(number: 69)
        assertEqual(a4.description, "A4+0.0")

        let gSharp4 = Pitch(number: 68, offset: 1.34)
        assertEqual(gSharp4.description, "G#4+1.34")
    }

    func testFromNotePitch() {
        let pitch = Pitch(
            letter: .a,
            accidental: .flat,
            octave: .four,
            offset: 0.0)

        assertEqual(pitch?.number, 68)
    }
}
