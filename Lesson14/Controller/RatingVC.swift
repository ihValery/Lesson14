import UIKit

class RatingVC: UIViewController {

    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var textViewForReview: UITextView!
    @IBOutlet weak var segmentRaning: UISegmentedControl!
    

    @IBOutlet weak var myViewForDesign: UIView!
    @IBOutlet weak var addRatingForDesign: UIButton!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMyDesign()
    }
    @IBAction func addRatingAndReview(_ sender: UIButton) {
        // player.review.append("123456789")
        //ratingPlayer.text = player.review.last
    }
    
    func setMyDesign() {
            namePlayer.text = player.name
            surNamePlayer.text = player.surName
            //Все коментарии в SnippetsLab
            let gradient = CAGradientLayer()
            gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
            gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
            gradient.frame = myViewForDesign.bounds
            myViewForDesign.layer.insertSublayer(gradient, at: 0)
            myViewForDesign.mask = addRatingForDesign
            addRatingForDesign.layer.cornerRadius = 13
            addRatingForDesign.layer.borderWidth = 2.0
        }
}
