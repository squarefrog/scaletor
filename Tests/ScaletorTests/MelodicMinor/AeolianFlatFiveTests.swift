import XCTest
import Scaletor

final class AeolianFlatFiveTests: XCTestCase {
    func test_Generate_C_AeolianFlatFive_Scale() {
        assertMatches("C D E♭ F G♭ A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_G_AeolianFlatFive_Scale() {
        assertMatches("G A B♭ C D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_D_AeolianFlatFive_Scale() {
        assertMatches("D E F G A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_A_AeolianFlatFive_Scale() {
        assertMatches("A B C D E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_E_AeolianFlatFive_Scale() {
        assertMatches("E F♯ G A B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_B_AeolianFlatFive_Scale() {
        assertMatches("B C♯ D E F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_Gb_AeolianFlatFive_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_Db_AeolianFlatFive_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_Ab_AeolianFlatFive_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_Eb_AeolianFlatFive_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_Bb_AeolianFlatFive_Scale() {
        assertMatches("B♭ C D♭ E♭ F♭ G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.aeolianFlatFive)
        }
    }

    func test_Generate_F_AeolianFlatFive_Scale() {
        assertMatches("F G A♭ B♭ C♭ D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MelodicMinorMode.aeolianFlatFive)
        }
    }
}
