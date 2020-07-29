import Scaletor
import XCTest

extension XCTestCase {
    func assertMatches(_ expectation: String, file: StaticString = #file, line: UInt = #line, scale: () throws -> [Note]) {
        do {
            let scale = try scale()
            let result = scale.map(\.description).joined(separator: " ")
            XCTAssertEqual(result, expectation, file: file, line: line)
        } catch {
            XCTFail("Failed to generate scale \(error)", file: file, line: line)
        }
    }
}
