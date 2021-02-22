import Foundation

struct Player {
    var name: String
    let surName: String
    let avatar: String
    let number: Int
    let proFile: String
    let team: String
    var review: [String]
    var rating: Int
    
    static func createPlayer() -> [Player] {
        var playerS: [Player] = []
        
        for index in 0..<DataPlayers.sharedInstance.names.count {
            let player = Player(name: DataPlayers.sharedInstance.names[index].capitalized,
                                surName: DataPlayers.sharedInstance.surNames[index].capitalized,
                                avatar: DataPlayers.sharedInstance.avatars[index],
                                number: DataPlayers.sharedInstance.number[index],
                                proFile: DataPlayers.sharedInstance.profile[index],
                                team: DataPlayers.sharedInstance.teams[index],
                                review: DataPlayers.sharedInstance.reviews[index],
                                rating: DataPlayers.sharedInstance.rating[index])
            playerS.append(player)
        }
        return playerS
    }
}
