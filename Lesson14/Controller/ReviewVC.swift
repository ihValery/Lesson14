import UIKit

class ReviewVC: UIViewController {

    @IBOutlet weak var tableReview: UITableView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myView: UIView!
    
    var index: Int!
    var player: Player {
        DataPlayers.sharedInstance.players[index]
    }
    let imegaView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stretchableHeader()
//        setMyDesignButton()
    }
    
    @IBAction func backButtonAction() {
        navigationController?.popViewController(animated: true)
    }
    
    func setMyDesignButton() {
        // Создание градиентного слоя
        let gradient = CAGradientLayer()
        // Градиентные цвета в том порядке, в котором они будут визуально отображаться
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        // Градиент слева направо
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        // Установка градиентного слоя того же размера, что и myView
        gradient.frame = myView.bounds
        // Добавление градиентного слоя к слою myView для рендеринга
        myView.layer.insertSublayer(gradient, at: 0)
        // Волшебство! Установка кнопки в качестве маски myView
        myView.mask = myButton
        // Установка радиуса угла и ширины границы кнопки
        myButton.layer.cornerRadius = 13
        myButton.layer.borderWidth = 2.0
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReview", for: indexPath)
        let tempIndex = player.reviews[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = tempIndex.text
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
