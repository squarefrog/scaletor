import XCTest
import Scaletor

final class MixolydianFlatSixTests: XCTestCase {
    func test_Generate_C_MixolydianFlatSix_Scale() {
        assertMatches("C D E F G A♭ B♭") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_G_MixolydianFlatSix_Scale() {
        assertMatches("G A B C D E♭ F") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_D_MixolydianFlatSix_Scale() {
        assertMatches("D E F♯ G A B♭ C") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_A_MixolydianFlatSix_Scale() {
        assertMatches("A B C♯ D E F G") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_E_MixolydianFlatSix_Scale() {
        assertMatches("E F♯ G♯ A B C D") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_B_MixolydianFlatSix_Scale() {
        assertMatches("B C♯ D♯ E F♯ G A") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_Gb_MixolydianFlatSix_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D♭ E♭♭ F♭") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_Db_MixolydianFlatSix_Scale() {
        assertMatches("D♭ E♭ F G♭ A♭ B♭♭ C♭") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_Ab_MixolydianFlatSix_Scale() {
        assertMatches("A♭ B♭ C D♭ E♭ F♭ G♭") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_Eb_MixolydianFlatSix_Scale() {
        assertMatches("E♭ F G A♭ B♭ C♭ D♭") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_Bb_MixolydianFlatSix_Scale() {
        assertMatches("B♭ C D E♭ F G♭ A♭") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }

    func test_Generate_F_MixolydianFlatSix_Scale() {
        assertMatches("F G A B♭ C D♭ E♭") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: MelodicMinorMode.mixolydianFlatSix)
        }
    }
}
