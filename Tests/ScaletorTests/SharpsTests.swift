import XCTest
import Scaletor

final class SharpsTests: XCTestCase {
    func test_Generate_C_Sharp_Scale() {
        assertMatches("C♯ D♯ E♯ F♯ G♯ A♯ B♯") {
            try Scaletor.generateScale(from: Note(pitch: .c, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_D_Sharp_Scale() {
        assertMatches("D♯ E♯ F♯♯ G♯ A♯ B♯ C♯♯") {
            try Scaletor.generateScale(from: Note(pitch: .d, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_E_Sharp_Scale() {
        assertMatches("E♯ F♯♯ G♯♯ A♯ B♯ C♯♯ D♯♯") {
            try Scaletor.generateScale(from: Note(pitch: .e, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_F_Sharp_Scale() {
        assertMatches("F♯ G♯ A♯ B C♯ D♯ E♯") {
            try Scaletor.generateScale(from: Note(pitch: .f, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_G_Sharp_Scale() {
        assertMatches("G♯ A♯ B♯ C♯ D♯ E♯ F♯♯") {
            try Scaletor.generateScale(from: Note(pitch: .g, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_A_Sharp_Scale() {
        assertMatches("A♯ B♯ C♯♯ D♯ E♯ F♯♯ G♯♯") {
            try Scaletor.generateScale(from: Note(pitch: .a, accidental: .sharp), for: MajorMode.ionian)
        }
    }

    func test_Generate_B_Sharp_Scale() {
        assertMatches("B♯ C♯♯ D♯♯ E♯ F♯♯ G♯♯ A♯♯") {
            try Scaletor.generateScale(from: Note(pitch: .b, accidental: .sharp), for: MajorMode.ionian)
        }
    }
}
