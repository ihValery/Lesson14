import UIKit

class AllPlayersTVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //var player = Player.createPlayer().sorted(by: { $0.rating > $1.rating })
    let cellManager = CellManager()
    //Первый раз обратимся, создатся экземпляр и заполнится данными
    var player: [Player] {
        return DataPlayers.sharedInstance.players
    }
    let imegaView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        stretchableHeader()
    }
    
    // В приложении на основе раскадровки часто требуется небольшая подготовка перед навигацией
    // Получить новый контроллер представления, используя переход.место назначения.
    // Передать выбранный объект новому контроллеру вида.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //indexPathForSelectedRow берет индекc у выделенной ячейки (опционал)
        guard let indexPath = tableView.indexPathForSelectedRow  else { return }
            let aboutVC = segue.destination as! AboutVC
            //передаем лишь индек
            aboutVC.index = indexPath.row
//            aboutVC.player = player[indexPath.row]
    }
    
    @IBAction func unwindToGoHome(_ unwindSegue: UIStoryboardSegue) {
        //Убрать анимацию
        navigationController?.popToRootViewController(animated: false)
        tableView.reloadData()
    }
    
    //Будет вызываться каждый раз при прокрутке таблицы
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Устанавливает точку отступа для контента относительно самого scrollView
        let y = 300 - (scrollView.contentOffset.y + 300)
        //На сколь будет минимально сжиматься наша imegaView и на сколько максимальна она будет растягиваться
        let height = min(max(y, 176), 600)
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
    }

    //Настройка анимации у растягивающего заголовка
    func stretchableHeader() {
        //tableView.estimatedRowHeight = 200
        //С какими параметрами/размерами наш заголовок загрузиться
        tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 10, right: 0)
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        imegaView.image = UIImage(named: "voting3")
        imegaView.contentMode = .scaleAspectFill
        imegaView.clipsToBounds = true
        view.addSubview(imegaView)
        
        //Убираем лишнюю разлиновку в таблице
        tableView.tableFooterView = UIView()
    }
}

extension AllPlayersTVC: UITableViewDataSource, UITableViewDelegate {
    
    //Позволяет задать количество строк в таблице (count элементов массива задает количество строк)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  70 //UITableView.automaticDimension
   }
    
    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCustomTableViewCell
        
        let tempIndex = player[indexPath.row]
        cell.myLabelForCell?.text = tempIndex.name
        cell.myLabelForsurName.text = tempIndex.surName
        cell.imageView?.image = UIImage(named: tempIndex.avatar)
        return cell
    }
}
