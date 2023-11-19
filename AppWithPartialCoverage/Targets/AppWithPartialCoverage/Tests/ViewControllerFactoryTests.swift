//
//  ViewControllerFactoryTests.swift
//  BasicAppTests
//
//  Created by ronan.ociosoig on 05/11/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import XCTest
@testable import AppWithPartialCoverage

final class ViewControllerFactoryTests: XCTestCase {

    func testEMake() throws {
        let viewController = ViewControllerFactory.make()
        XCTAssertEqual(viewController.view.backgroundColor, .white)
    }
}
