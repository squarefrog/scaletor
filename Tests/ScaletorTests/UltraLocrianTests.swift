import XCTest
import Scaletor

final class UltraLocrianTests: XCTestCase {
    func test_Generate_C_UltraLocrian_Scale() {
        assertMatches("C D♭ E♭ F♭ G♭ A♭ B♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_G_UltraLocrian_Scale() {
        assertMatches("G A♭ B♭ C♭ D♭ E♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_D_UltraLocrian_Scale() {
        assertMatches("D E♭ F G♭ A♭ B♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_A_UltraLocrian_Scale() {
        assertMatches("A B♭ C D♭ E♭ F G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_E_UltraLocrian_Scale() {
        assertMatches("E F G A♭ B♭ C D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_B_UltraLocrian_Scale() {
        assertMatches("B C D E♭ F G A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_Gb_UltraLocrian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭♭ D♭♭ E♭♭ F♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_Db_UltraLocrian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭♭ A♭♭ B♭♭ C♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_Ab_UltraLocrian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭♭ E♭♭ F♭ G♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_Eb_UltraLocrian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭♭ B♭♭ C♭ D♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_Bb_UltraLocrian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭♭ F♭ G♭ A♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MinorMode.ultraLocrian)
        }
    }

    func test_Generate_F_UltraLocrian_Scale() {
        assertMatches("F G♭ A♭ B♭♭ C♭ D♭ E♭♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MinorMode.ultraLocrian)
        }
    }
}
