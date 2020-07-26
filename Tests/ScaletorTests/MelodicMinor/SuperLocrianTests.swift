import XCTest
import Scaletor

final class SuperLocrianTests: XCTestCase {
    func test_Generate_C_SuperLocrian_Scale() {
        assertMatches("C D♭ E♭ F♭ G♭ A♭ B♭") {
            try Scaletor.generateScale(from: Note(pitch: .c), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_G_SuperLocrian_Scale() {
        assertMatches("G A♭ B♭ C♭ D♭ E♭ F") {
            try Scaletor.generateScale(from: Note(pitch: .g), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_D_SuperLocrian_Scale() {
        assertMatches("D E♭ F G♭ A♭ B♭ C") {
            try Scaletor.generateScale(from: Note(pitch: .d), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_A_SuperLocrian_Scale() {
        assertMatches("A B♭ C D♭ E♭ F G") {
            try Scaletor.generateScale(from: Note(pitch: .a), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_E_SuperLocrian_Scale() {
        assertMatches("E F G A♭ B♭ C D") {
            try Scaletor.generateScale(from: Note(pitch: .e), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_B_SuperLocrian_Scale() {
        assertMatches("B C D E♭ F G A") {
            try Scaletor.generateScale(from: Note(pitch: .b), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_Gb_SuperLocrian_Scale() {
        assertMatches("G♭ A♭♭ B♭♭ C♭♭ D♭♭ E♭♭ F♭") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .flat), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_Db_SuperLocrian_Scale() {
        assertMatches("D♭ E♭♭ F♭ G♭♭ A♭♭ B♭♭ C♭") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .flat), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_Ab_SuperLocrian_Scale() {
        assertMatches("A♭ B♭♭ C♭ D♭♭ E♭♭ F♭ G♭") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .flat), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_Eb_SuperLocrian_Scale() {
        assertMatches("E♭ F♭ G♭ A♭♭ B♭♭ C♭ D♭") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .flat), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_Bb_SuperLocrian_Scale() {
        assertMatches("B♭ C♭ D♭ E♭♭ F♭ G♭ A♭") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .flat), for: MelodicMinorMode.superLocrian)
        }
    }

    func test_Generate_F_SuperLocrian_Scale() {
        assertMatches("F G♭ A♭ B♭♭ C♭ D♭ E♭") {
            try Scaletor.generateScale(from: Note(pitch: .f), for: MelodicMinorMode.superLocrian)
        }
    }
}
