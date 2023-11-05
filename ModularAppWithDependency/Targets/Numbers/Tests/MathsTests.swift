//
//  MathsTests.swift
//  BasicAppTests
//
//  Created by ronan.ociosoig on 21/10/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import XCTest

@testable import Numbers

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
