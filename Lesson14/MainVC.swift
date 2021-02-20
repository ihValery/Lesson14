//
//  TestForLabelVC.swift
//  Lesson14
//
//  Created by Валерий Игнатьев on 20.02.2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var player = Player.createPlayer()//.sorted(by: { $0.name < $1.name })
    let imegaView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.estimatedRowHeight = 50
        tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        
        //tableView.backgroundColor = .darkGray
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        imegaView.image = UIImage(named: "voting3")
        imegaView.contentMode = .scaleAspectFill
        imegaView.clipsToBounds = true
        view.addSubview(imegaView)
        // Do any additional setup after loading the view.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    
    /* порробовать сделать 2 секции для East and West
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */
    
    //Позволяет задать количество строк в таблице (count элементов массива задает количество строк)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  50//UITableView.automaticDimension
   }
    
    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTVC

        let tempIndex = player[indexPath.row]
        cell.textLabel?.text = tempIndex.name + " " + tempIndex.surName
        cell.imageView?.image = UIImage(named: tempIndex.avatar)
        return cell
    }

    //Будет вызываться каждый раз при прокрутке таблицы
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Устанавливает точку отступа для контента относительно самого scrollView
        let y = 300 - (scrollView.contentOffset.y + 300)
        
        //На сколь будет минимально сжиматься наша imegaView и на сколько максимальна она будет растягиваться
        let height = min(max(y, 60), 600)
        
        imegaView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
        
    }
    
    /*
    //Сразу маленькая картинка и вытягивается (пружина)
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.scrollIndicatorInsets = view.safeAreaInsets
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: view.safeAreaInsets.bottom, right: 0)
    }
    */
}
