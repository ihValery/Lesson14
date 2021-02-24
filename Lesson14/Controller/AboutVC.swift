import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var numberPlayer: UILabel!
    @IBOutlet weak var proFilePlayer: UILabel!
    @IBOutlet weak var logoTeam: UIImageView!
    @IBOutlet weak var ratingPlayer: UILabel!
    
    @IBOutlet weak var viewReviewsBttn: UIButton!
    @IBOutlet weak var leaveRatingBttn: UIButton!
    @IBOutlet weak var BackBttn: UIButton!
    
    //Мы сюда перейдем при условии что player будет
    var index: Int!
    var player: Player {
        return DataPlayers.sharedInstance.players[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        creatAboutCard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goReview" {
            let reviewsVC = segue.destination as! ReviewVC
            reviewsVC.index = index
        }
    }
    
    @IBAction func buttonForAddReviewAction(_ sender: UIButton) {
        //Создаем свойство, и указываем НЕ identifier сториборда, а его реальное имя ))) смотри вверх
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //Создаем с помощью метода instantiateViewController и не забываем кастить, для доступа к свойствам ВТОРОГО вьюконтролера
        guard let ratingVC = storyboard.instantiateViewController(identifier: "RatingSB") as? RatingVC else { return }
        ratingVC.index = index
        showDetailViewController(ratingVC, sender: nil)
    }
    
    @IBAction func backAction() {
        navigationController?.popViewController(animated: true)
    }
    
    func creatAboutCard() {
        avatar.image = UIImage(named: String(player.avatar))
        namePlayer.text = player.name
        surNamePlayer.text = player.surName
        numberPlayer.text = String(player.number)
        proFilePlayer.text = player.proFile
        logoTeam.image = UIImage(named: String(player.team))
        if let rating = player.rating {
            ratingPlayer.text = String(repeating: DataPlayers.sharedInstance.ball, count: Int(rating))
        } else {
            ratingPlayer.text = "No rating"
        }
    }
}
