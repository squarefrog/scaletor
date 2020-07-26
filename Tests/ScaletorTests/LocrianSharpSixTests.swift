import XCTest
import Scaletor

final class LocrianSharpSixTests: XCTestCase {
    func test_Generate_C_LocrianSharpSix_Scale() {
        assertMatches("C D♭ E♭ F G♭ A B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_G_LocrianSharpSix_Scale() {
        assertMatches("G A♭ B♭ C D♭ E F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_D_LocrianSharpSix_Scale() {
        assertMatches("D E♭ F G A♭ B C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_A_LocrianSharpSix_Scale() {
        assertMatches("A B♭ C D E♭ F♯ G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_E_LocrianSharpSix_Scale() {
        assertMatches("E F G A B♭ C♯ D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_B_LocrianSharpSix_Scale() {
        assertMatches("B C D E F G♯ A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_Gb_LocrianSharpSix_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭♭ E♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_Db_LocrianSharpSix_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭♭ B♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_Ab_LocrianSharpSix_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭♭ F G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_Eb_LocrianSharpSix_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭♭ C D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_Bb_LocrianSharpSix_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F♭ G A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MinorMode.locrianSharpSix)
        }
    }

    func test_Generate_F_LocrianSharpSix_Scale() {
        assertMatches("F G♭ A♭ B♭ C♭ D E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MinorMode.locrianSharpSix)
        }
    }
}
