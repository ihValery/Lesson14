import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var numberPlayer: UILabel!
    @IBOutlet weak var proFilePlayer: UILabel!
    @IBOutlet weak var logoTeam: UIImageView!
    @IBOutlet weak var viewReviewsBttn: UIButton!
    @IBOutlet weak var ratingPlayer: UILabel!
    
    //Мы сюда перейдем при условии что player будет
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        creatAboutCard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goReview" {
            let reviewsVC = segue.destination as! ReviewVC
            reviewsVC.player = player
        }
    }
    
    @IBAction func buttonForAddReviewAction(_ sender: UIButton) {
        //Создаем свойство, и указываем НЕ identifier сториборда, а его реальное имя ))) смотри вверх
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //Согдаем с помощью метода instantiateViewController и не забываем кастить, для доступа к свойствам ВТОРОГО вьюконтролера
        guard let ratingVC = storyboard.instantiateViewController(identifier: "RatingSB") as? RatingVC else { return }
        ratingVC.player = player
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
        viewReviewsBttn.setTitle("View review (\(player.review.count) reviews)", for: .normal)
        ratingPlayer.text = String(Array(repeating: "🏀", count: player.rating))
    }
    @IBAction func randomAction(_ sender: UIButton) {
        
        player.review.append(String(Int.random(in: 1...10)))
        player.name = "QWERTY"
        ratingPlayer.text = player.review.last
    
        
    }
}
