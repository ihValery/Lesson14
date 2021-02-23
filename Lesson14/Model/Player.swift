import UIKit

struct Player {
    var name: String
    let surName: String
    let avatar: UIImage?
    let number: Int
    let proFile: String
    let team: String
    //Вычисляемое свойство (классное применение учимся и используем)
    var rating: Double? {
        if reviews.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for i in reviews {
                sum += i.mark
            }
            return sum / Double(reviews.count)
        }
    }
    var reviews: [Review] = []
}

struct Review {
    let date: Date
    let text: String
    let mark: Double
}





//    static func createPlayer() -> [Player] {
//        var playerS: [Player] = []
//
//        for index in 0..<DataPlayers.sharedInstance.names.count {
//            let player = Player(name: DataPlayers.sharedInstance.names[index].capitalized,
//                                surName: DataPlayers.sharedInstance.surNames[index].capitalized,
//                                avatar: DataPlayers.sharedInstance.avatars[index],
//                                number: DataPlayers.sharedInstance.number[index],
//                                proFile: DataPlayers.sharedInstance.profile[index],
//                                team: DataPlayers.sharedInstance.teams[index],
//                                review: DataPlayers.sharedInstance.reviews[index],
//                                rating: DataPlayers.sharedInstance.rating[index])
//            playerS.append(player)
//        }
//        return playerS
//    }
