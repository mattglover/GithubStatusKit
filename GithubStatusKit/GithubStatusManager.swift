import Foundation

class GithubStatusManager: GithubStatusManagerProtocol {

	var availableMethods: [String:URL]?

	init() {
		fetchAvailableMethods { (availableMethods: [String : URL]) -> (Void) in
			self.availableMethods = availableMethods
		}
	}

	func fetchAvailableMethods(completion: ([String:URL]) -> (Void)) {
		
	}
}
