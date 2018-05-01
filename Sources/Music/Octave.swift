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

public enum Octave: Int {
    case minusOne = -1
    case zero = 0
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine

    public static let `default`: Octave = .four

    public static let min: Octave = .minusOne
    public static let max: Octave = .nine

    public static let semitonesCount: Int = 12
}

extension Octave {
    init?(_ number: Int) {
        self.init(rawValue: number)
    }

    init(_ number: MIDI.Number) {
        self.init(number.value / Octave.semitonesCount - 1)!
    }
}

extension Octave: CustomStringConvertible {
    public var description: String {
        return "\(rawValue)"
    }
}
