import Foundation

protocol GithubStatusManagerProtocol {
	func fetchAvailableMethods(completion: ([String:URL]) -> (Void))
}
