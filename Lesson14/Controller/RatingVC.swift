import UIKit

class RatingVC: UIViewController {

    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var textViewForReview: UITextView!
    @IBOutlet weak var segmentRaning: UISegmentedControl!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePlayer.text = player.name
        surNamePlayer.text = player.surName
        //segmentRaning.selectedSegmentIndex = player.rating
        //textViewForReview.place
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addRatingAndReview(_ sender: UIButton) {
        
       // player.review.append("123456789")
        //ratingPlayer.text = player.review.last
        
        
    }
    
    
}
