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
    
    func testManagerEnvironmentIsNotNil() {
        XCTAssertNotNil(sut.environment)
    }
    
    func testManagerEnvironment_IsProduction() {
        XCTAssertEqual("Production", sut.environment)
    }
    
    func testManagerWithTestEnvironment_IsTest() {
        sut = nil
        sut = GithubStatusManager(environment: "Test")
        
        XCTAssertEqual("Test", sut.environment)
    }
    
}
