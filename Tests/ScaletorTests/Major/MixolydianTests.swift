import XCTest
import Scaletor

final class MixolydianTests: XCTestCase {
    func test_Generate_C_Mixolydian_Scale() {
        assertMatches("C D E F G A B♭") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_G_Mixolydian_Scale() {
        assertMatches("G A B C D E F") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_D_Mixolydian_Scale() {
        assertMatches("D E F♯ G A B C") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_A_Mixolydian_Scale() {
        assertMatches("A B C♯ D E F♯ G") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_E_Mixolydian_Scale() {
        assertMatches("E F♯ G♯ A B C♯ D") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_B_Mixolydian_Scale() {
        assertMatches("B C♯ D♯ E F♯ G♯ A") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_Gb_Mixolydian_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D♭ E♭ F♭") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_Db_Mixolydian_Scale() {
        assertMatches("D♭ E♭ F G♭ A♭ B♭ C♭") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_Ab_Mixolydian_Scale() {
        assertMatches("A♭ B♭ C D♭ E♭ F G♭") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_Eb_Mixolydian_Scale() {
        assertMatches("E♭ F G A♭ B♭ C D♭") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_Bb_Mixolydian_Scale() {
        assertMatches("B♭ C D E♭ F G A♭") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.mixolydian)
        }
    }

    func test_Generate_F_Mixolydian_Scale() {
        assertMatches("F G A B♭ C D E♭") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: MajorMode.mixolydian)
        }
    }
}
