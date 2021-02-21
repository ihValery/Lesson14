import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var numberPlayer: UILabel!
    @IBOutlet weak var proFilePlayer: UILabel!
    @IBOutlet weak var logoTeam: UIImageView!
    @IBOutlet weak var viewReviewsBttn: UIButton!
    
    //Мы сюда перейдем при условии что player будет
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        creatAboutCard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let reviewsVC = segue.destination as! ReviewVC
        reviewsVC.player = player
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
    }
}
