import XCTest

@testable import BasicApp

final class MathsTests: XCTestCase {
    func testMathsAdd() {
        XCTAssertEqual(Maths.add(2, 2), 4)
    }
    
    func testMathsSubtract() {
        XCTAssertEqual(Maths.subtract(2, 2), 0)
    }
    
    func testMathsMultiply() {
        XCTAssertEqual(Maths.multiply(2, 2), 4)
    }
    
    func testMathsDivide() {
        XCTAssertEqual(Maths.divide(2, 2), 1)
    }
}
