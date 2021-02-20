//
//  allPlayersTVC.swift
//  Lesson14
//
//  Created by Валерий Игнатьев on 19.02.2021.
//

import UIKit

class AllPlayersTVC: UITableViewController {
    
    let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        //Убираем лишнюю разлиновку в таблице
        tableView.tableFooterView = UIView()
        
        tableView.estimatedRowHeight = 50
        tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        imageView.image = UIImage(named: "voting")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        //navigationController?.navigationBar.isHidden = true
    }
    
    var player = Player.createPlayer().sorted(by: { $0.name < $1.name })
    
    
    /* порробовать сделать 2 секции для East and West
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */
    
    //Позволяет задать количество строк в таблице (count элементов массива задает количество строк)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }

    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let tempIndex = player[indexPath.row]
        cell.textLabel?.text = tempIndex.name + " " + tempIndex.surName
        cell.imageView?.image = UIImage(named: tempIndex.avatar)
        
        return cell
    }
    
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // В приложении на основе раскадровки часто требуется небольшая подготовка перед навигацией
    // Получить новый контроллер представления, используя переход.место назначения.
    // Передать выбранный объект новому контроллеру вида.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //indexPathForSelectedRow берет индекc у выделенной ячейки (опционал)
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if segue.identifier == "goToAbout" {
            let aboutVC = segue.destination as? AboutVC
            aboutVC?.player = player[indexPath.row]
        }
    }
    
    //Будет вызываться каждый раз при прокрутке таблицы
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Устанавливает точку отступа для контента относительно самого scrollView
        let y = 300 - (scrollView.contentOffset.y + 300)
        //На сколь будет минимально сжиматься наша imegaView и на сколько максимальна она будет растягиваться
        let height = min(max(y, 60), 400)
        
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
