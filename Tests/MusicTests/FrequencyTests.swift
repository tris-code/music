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

final class CalculationsTests: TestCase {
    func testFromFrequency() {
        assertEqual(Pitch(from: 880.0).description, "A5+0.0")
        assertEqual(Pitch(from: 174.61411571650194).description, "F3+0.0")
    }

    func testToFrequency() {
        let a5 = Pitch(name: .a, octave: .five, offset: 0.0)
        assertEqual(a5?.frequency, 880.0)
        let f3 = Pitch(name: .f, octave: .three, offset: 0.0)
        assertEqual(f3?.frequency, 174.61411571650194)
    }

    func testOffset() {
        #if os(Linux)
        assertEqual(Pitch(from: 444.0).offset, 15.667383390535543)
        #else
        assertEqual(Pitch(from: 444.0).offset, 15.66738339053554)
        #endif
        assertEqual(Pitch(from: 444.0).description, "A4+15.66")

        assertEqual(Pitch(from: 439.0).offset, -3.939100787161778)
        assertEqual(Pitch(from: 439.0).description, "A4-3.93")
    }
}
