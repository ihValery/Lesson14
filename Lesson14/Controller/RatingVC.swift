import UIKit

class RatingVC: UIViewController {

    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var surNamePlayer: UILabel!
    @IBOutlet weak var textViewForReview: UITextView!
    @IBOutlet weak var segmentRaning: UISegmentedControl!
    @IBOutlet weak var addRatingButton: UIButton!
    
    var index: Int!
    var player: Player {
        return DataPlayers.sharedInstance.players[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMyDesign()
        textViewForReview.delegate = self
    }
    @IBAction func addRatingAndReview(_ sender: UIButton) {
        let review = Review(date: Date(),
                            text: textViewForReview.text,
                            mark: Double(segmentRaning.selectedSegmentIndex + 1))
        DataPlayers.sharedInstance.players[index].reviews.append(review)
    }
    
    func setMyDesign() {
        namePlayer.text = player.name
        surNamePlayer.text = player.surName
        buttonOn(bool: false)
        
        }
    
    func buttonOn(bool: Bool) {
        addRatingButton.isEnabled = bool
        addRatingButton.alpha = bool ? 1 : 0.3
    }
}

extension RatingVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
        textView.textColor = .black
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        buttonOn(bool: textView.text.count > 20)
        return true
    }
}
