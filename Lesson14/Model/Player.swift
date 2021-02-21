import Foundation

struct Player {
    let name: String
    let surName: String
    let avatar: String
    
    static func createPlayer() -> [Player] {
        var playerS: [Player] = []
        
        for index in 0..<DataPlayers.sharedInstance.names.count {
            let player = Player(name: DataPlayers.sharedInstance.names[index].capitalized,
                                surName: DataPlayers.sharedInstance.surNames[index].capitalized,
                                avatar: DataPlayers.sharedInstance.avatars[index])
            playerS.append(player)
        }
        return playerS
    }
}
