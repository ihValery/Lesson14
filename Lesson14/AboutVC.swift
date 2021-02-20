//
//  AboutVC.swift
//  Lesson14
//
//  Created by Валерий Игнатьев on 19.02.2021.
//

import UIKit

class AboutVC: UIViewController {
    
    //Мы сюда перейдем при условии что player будет
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        creatAboutCard()
    }

    func creatAboutCard() {
        title = player.name + " " + player.surName
    }
}
