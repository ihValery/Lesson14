import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    
    //Мы сюда перейдем при условии что player будет
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        creatAboutCard()
        
    }
    
    func creatAboutCard() {
        avatar.image = UIImage(named: String(player.avatar))
        namePlayer.text = player.name
        surNamePlayer.text = player.surName
        //phoneNumberLabel.text = "Phone:      \(person.phoneNumber)"
    }
}
