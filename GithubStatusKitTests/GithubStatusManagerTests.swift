import XCTest
@testable import GithubStatusKit

class GithubStatusManagerTests: XCTestCase {
    
    var sut: MockGithubStatusManager!

    func testManagerIsNotNil() {
		sut = MockGithubStatusManager()
        XCTAssertNotNil(sut)
    }

	func testConformsToGithubStatusManagerProtocol() {
		sut = MockGithubStatusManager()
		XCTAssertTrue((sut as Any) is GithubStatusManagerProtocol)
	}

	// MARK: Initialiser tests
	func testOnInitialisation_callsFetchAvailableMethods() {
		sut = MockGithubStatusManager()
		XCTAssertTrue(sut.fetchAvailableMethodsCalled)
	}
}

class MockGithubStatusManager: GithubStatusManager {

	var fetchAvailableMethodsCalled = false

	override func fetchAvailableMethods(completion: ([String:URL]) -> ()) -> Void {
		fetchAvailableMethodsCalled = true
		completion (["status_url": URL(string: "https://status.github.com/api/status.json")!,
					"messages_url": URL(string: "https://status.github.com/api/messages.json")!,
					"last_message_url": URL(string: "https://status.github.com/api/last-message.json")!,
					"daily_summary": URL(string: "https://status.github.com/api/daily-summary.json")!]
		)
	}
}
