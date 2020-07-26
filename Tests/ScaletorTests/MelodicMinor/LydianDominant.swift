import XCTest
import Scaletor

final class LydianDominantTests: XCTestCase {
    func test_Generate_C_LydianDominant_Scale() {
        assertMatches("C D E F♯ G A B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_G_LydianDominant_Scale() {
        assertMatches("G A B C♯ D E F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_D_LydianDominant_Scale() {
        assertMatches("D E F♯ G♯ A B C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_A_LydianDominant_Scale() {
        assertMatches("A B C♯ D♯ E F♯ G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_E_LydianDominant_Scale() {
        assertMatches("E F♯ G♯ A♯ B C♯ D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_B_LydianDominant_Scale() {
        assertMatches("B C♯ D♯ E♯ F♯ G♯ A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_Gb_LydianDominant_Scale() {
        assertMatches("G♭ A♭ B♭ C D♭ E♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_Db_LydianDominant_Scale() {
        assertMatches("D♭ E♭ F G A♭ B♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_Ab_LydianDominant_Scale() {
        assertMatches("A♭ B♭ C D E♭ F G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_Eb_LydianDominant_Scale() {
        assertMatches("E♭ F G A B♭ C D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_Bb_LydianDominant_Scale() {
        assertMatches("B♭ C D E F G A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.lydianDominant)
        }
    }

    func test_Generate_F_LydianDominant_Scale() {
        assertMatches("F G A B C D E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MelodicMinorMode.lydianDominant)
        }
    }
}
