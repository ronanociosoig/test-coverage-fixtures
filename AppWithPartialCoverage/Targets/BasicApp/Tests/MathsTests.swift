import XCTest

@testable import BasicApp

final class MathsTests: XCTestCase {
    func testMathsAdd() {
        XCTAssertEqual(Maths.add(2, 2), 4)
    }
    
    func testMathsSubtract() {
        XCTAssertEqual(Maths.subtract(2, 2), 0)
    }
}
