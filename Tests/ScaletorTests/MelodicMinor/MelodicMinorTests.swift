import XCTest
import Scaletor

final class MelodicMinorTests: XCTestCase {
    func test_Generate_C_MelodicMinor_Scale() {
        assertMatches("C D E♭ F G A B") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_G_MelodicMinor_Scale() {
        assertMatches("G A B♭ C D E F♯") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_D_MelodicMinor_Scale() {
        assertMatches("D E F G A B C♯") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_A_MelodicMinor_Scale() {
        assertMatches("A B C D E F♯ G♯") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_E_MelodicMinor_Scale() {
        assertMatches("E F♯ G A B C♯ D♯") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_B_MelodicMinor_Scale() {
        assertMatches("B C♯ D E F♯ G♯ A♯") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_Gb_MelodicMinor_Scale() {
        assertMatches("G♭ A♭ B♭♭ C♭ D♭ E♭ F") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_Db_MelodicMinor_Scale() {
        assertMatches("D♭ E♭ F♭ G♭ A♭ B♭ C") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_Ab_MelodicMinor_Scale() {
        assertMatches("A♭ B♭ C♭ D♭ E♭ F G") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_Eb_MelodicMinor_Scale() {
        assertMatches("E♭ F G♭ A♭ B♭ C D") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_Bb_MelodicMinor_Scale() {
        assertMatches("B♭ C D♭ E♭ F G A") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.melodicMinor)
        }
    }

    func test_Generate_F_MelodicMinor_Scale() {
        assertMatches("F G A♭ B♭ C D E") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: MelodicMinorMode.melodicMinor)
        }
    }
}
