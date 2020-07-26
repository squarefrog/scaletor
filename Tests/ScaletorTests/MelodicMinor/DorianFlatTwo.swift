import XCTest
import Scaletor

final class DorianFlatTwoTests: XCTestCase {
    func test_Generate_C_DorianFlatTwoFlatTwo_Scale() {
        assertMatches("C D♭ E♭ F G A B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_G_DorianFlatTwo_Scale() {
        assertMatches("G A♭ B♭ C D E F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_D_DorianFlatTwo_Scale() {
        assertMatches("D E♭ F G A B C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_A_DorianFlatTwo_Scale() {
        assertMatches("A B♭ C D E F♯ G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_E_DorianFlatTwo_Scale() {
        assertMatches("E F G A B C♯ D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_B_DorianFlatTwo_Scale() {
        assertMatches("B C D E F♯ G♯ A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_Gb_DorianFlatTwo_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭ D♭ E♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_Db_DorianFlatTwo_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭ A♭ B♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_Ab_DorianFlatTwo_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭ E♭ F G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_Eb_DorianFlatTwo_Scale() {
        assertMatches("E♭ F♭ G♭ A♭ B♭ C D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_Bb_DorianFlatTwo_Scale() {
        assertMatches("B♭ C♭ D♭ E♭ F G A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.dorianFlatTwo)
        }
    }

    func test_Generate_F_DorianFlatTwo_Scale() {
        assertMatches("F G♭ A♭ B♭ C D E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MelodicMinorMode.dorianFlatTwo)
        }
    }
}
