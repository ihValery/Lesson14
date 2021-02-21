import UIKit

class ReviewVC: UIViewController {

    @IBOutlet weak var tableReview: UITableView!
    
    var player: Player!
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
        return player.review.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReview", for: indexPath)
        let tempIndex = player.review[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = tempIndex
        switch indexPath.row.isMultiple(of: 2) {
            case false:
                cell.backgroundColor = .systemGray5
            default:
                break
        }
        return cell
    }
}

extension ReviewVC: UITableViewDelegate {
    //Будет вызываться каждый раз при прокрутке таблицы
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Устанавливает точку отступа для контента относительно самого scrollView
        let y = 300 - (scrollView.contentOffset.y + 300)
        //На сколь будет минимально сжиматься наша imegaView и на сколько максимальна она будет растягиваться
        let height = min(max(y, 176), 600)
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
    }
}
