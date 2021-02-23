import UIKit

//Кастомный класс для кнопок (УЧИМСЯ НЕ ДУБЛИРОВАТЬ КОД)
class DesignButton: UIButton {
    override func awakeFromNib() {
        layer.cornerRadius = 13
//        layer.shadowOffset = CGSize(width: 0, height: 2)
//        layer.shadowRadius = 4
//        layer.shadowOpacity = 0.4
        layer.borderWidth = 2
    }
}

//Кастомный класс для превьюшки, а точнее ее подложки (красивая тень)
class DesignView: UIView{
    override func awakeFromNib() {
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.4
    }
}

//Кастом для Label (Да бы был единный стиль, как сильно РАЗГРУЗИЛИ основной класс)
class DesignLabel: UILabel {
    override func awakeFromNib() {
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.4
    }
}
