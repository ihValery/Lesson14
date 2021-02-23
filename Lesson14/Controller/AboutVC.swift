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
    
    @IBOutlet weak var viewDesignOne: UIView!
    @IBOutlet weak var viewDesignTwo: UIView!
    @IBOutlet weak var viewDesignThree: UIView!
  
    
    //Мы сюда перейдем при условии что player будет
    var index: Int!
    var player: Player {
        return DataPlayers.sharedInstance.players[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        creatAboutCard()
    
        viewReviewsBttn.layer.cornerRadius = 13
        viewReviewsBttn.layer.borderWidth = 2
        leaveRatingBttn.layer.cornerRadius = 13
        leaveRatingBttn.layer.borderWidth = 2
        
//        setMyDesignBttnTwo()
//        setMyDesignButton()
//        setMyDesignBttnThree()
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
//        proFilePlayer.text = player.proFile
        logoTeam.image = UIImage(named: String(player.team))
//        viewReviewsBttn.setTitle("View review (\(player.review.count) reviews)", for: .normal)
//        ratingPlayer.text = String(Array(repeating: "🏀", count: player.rating))
    }
    
    @IBAction func randomAction(_ sender: UIButton) {
//        player.review.append(String(Int.random(in: 1...10)))
//        player.name = "QWERTY"
//        ratingPlayer.text = player.review.last
    }
    
    func setMyDesignButton() {
        //Все коментарии в SnippetsLab
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = viewDesignOne.bounds
        viewDesignOne.layer.insertSublayer(gradient, at: 0)
        viewDesignOne.mask = viewReviewsBttn
        viewReviewsBttn.layer.cornerRadius = 13
        viewReviewsBttn.layer.borderWidth = 2.0
    }
    
    func setMyDesignBttnTwo() {
        //Все коментарии в SnippetsLab
        let gradientTwo = CAGradientLayer()
        gradientTwo.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradientTwo.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientTwo.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientTwo.frame = viewDesignTwo.bounds
        viewDesignTwo.layer.insertSublayer(gradientTwo, at: 0)
        viewDesignTwo.mask = leaveRatingBttn
        leaveRatingBttn.layer.cornerRadius = 13
        leaveRatingBttn.layer.borderWidth = 2.0
    }
    
    func setMyDesignBttnThree() {
        //Все коментарии в SnippetsLab
        let gradientTwo = CAGradientLayer()
        gradientTwo.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradientTwo.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientTwo.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientTwo.frame = viewDesignThree.bounds
        viewDesignThree.layer.insertSublayer(gradientTwo, at: 0)
        viewDesignThree.mask = BackBttn
        BackBttn.layer.cornerRadius = 13
        BackBttn.layer.borderWidth = 2.0
    }
}
