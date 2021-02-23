import UIKit

class ReviewVC: UIViewController {

    @IBOutlet weak var tableReview: UITableView!
    @IBOutlet weak var myButton: UIButton!
    
    var index: Int!
    var player: Player {
        DataPlayers.sharedInstance.players[index]
    }
    let imegaView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stretchableHeader()
    }
    
    @IBAction func backButtonAction() {
        navigationController?.popViewController(animated: true)
    }
    
    //Настройка анимации у растягивающего заголовка
    func stretchableHeader() {
        //tableView.estimatedRowHeight = 200
        //С какими параметрами/размерами наш заголовок загрузиться
        tableReview.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 10, right: 0)
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        imegaView.image = UIImage(named: "ThreeStar")
        imegaView.contentMode = .scaleAspectFill
        imegaView.clipsToBounds = true
        view.addSubview(imegaView)
        
        //Убираем лишнюю разлиновку в таблице
        tableReview.tableFooterView = UIView()
    }
}

extension ReviewVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReview", for: indexPath) as! CustomCellReview
        //let tempIndex = player.reviews[indexPath.row]
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "dd/MM/YYYY"
        cell.date.text = dateFormate.string(from: player.reviews[indexPath.row].date)
        cell.textReview.text = player.reviews[indexPath.row].text
        cell.textReview.numberOfLines = 0
        cell.mark.text = String(repeating: DataPlayers.sharedInstance.ball, count: Int(player.reviews[indexPath.row].mark))
        return cell
    }
}

extension ReviewVC: UITableViewDelegate {
    //Будет вызываться каждый раз при прокрутке таблицы
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Устанавливает точку отступа для контента относительно самого scrollView
        let y = 300 - (scrollView.contentOffset.y + 300)
        //На сколь будет минимально сжиматься наша imegaView и на сколько максимальна она будет растягиваться
        let height = min(max(y, 50), 600)
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
    }
}
