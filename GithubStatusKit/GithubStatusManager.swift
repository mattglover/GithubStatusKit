import Foundation

struct GithubStatusManager {
    
    var environment: String!
    
    init(environment: String = "Production") {
        self.environment = environment
    }
    
}
