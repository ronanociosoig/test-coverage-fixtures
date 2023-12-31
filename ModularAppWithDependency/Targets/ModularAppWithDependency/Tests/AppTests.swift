import Foundation
import XCTest
@testable import ModularAppWithDependency

final class BasicModularAppTests: XCTestCase {
    func testViewControllerFactory() {
        let viewController = ViewControllerFactory.make()
        XCTAssertEqual(viewController.view.backgroundColor, .white)
    }
}
