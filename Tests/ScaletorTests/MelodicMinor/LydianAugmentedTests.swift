import XCTest
import Scaletor

final class LydianAugmentedTests: XCTestCase {
    func test_Generate_C_LydianAugmented_Scale() {
        assertMatches("C D E F♯ G♯ A B") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_G_LydianAugmented_Scale() {
        assertMatches("G A B C♯ D♯ E F♯") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_D_LydianAugmented_Scale() {
        assertMatches("D E F♯ G♯ A♯ B C♯") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_A_LydianAugmented_Scale() {
        assertMatches("A B C♯ D♯ E♯ F♯ G♯") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_E_LydianAugmented_Scale() {
        assertMatches("E F♯ G♯ A♯ B♯ C♯ D♯") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_B_LydianAugmented_Scale() {
        assertMatches("B C♯ D♯ E♯ F♯♯ G♯ A♯") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_Gb_LydianAugmented_Scale() {
        assertMatches("G♭ A♭ B♭ C D E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_Db_LydianAugmented_Scale() {
        assertMatches("D♭ E♭ F G A B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_Ab_LydianAugmented_Scale() {
        assertMatches("A♭ B♭ C D E F G") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_Eb_LydianAugmented_Scale() {
        assertMatches("E♭ F G A B C D") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_Bb_LydianAugmented_Scale() {
        assertMatches("B♭ C D E F♯ G A") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.lydianAugmented)
        }
    }

    func test_Generate_F_LydianAugmented_Scale() {
        assertMatches("F G A B C♯ D E") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MelodicMinorMode.lydianAugmented)
        }
    }
}
