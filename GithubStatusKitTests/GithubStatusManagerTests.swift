import XCTest
@testable import GithubStatusKit

class GithubStatusManagerTests: XCTestCase {
    
    var sut: GithubStatusManager!
    
    override func setUp() {
        super.setUp()
        sut = GithubStatusManager()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testManagerIsNotNil() {
        XCTAssertNotNil(sut)
    }
}
