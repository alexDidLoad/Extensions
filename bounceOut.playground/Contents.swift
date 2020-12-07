import UIKit
import PlaygroundSupport

/* This extension uses animation to scale down the UIView over a specified number of seconds until it disappears*/

extension UIView {
    
    func bounceOut(duration: TimeInterval) {
        
        UIView.animate(withDuration: duration, animations: { [unowned self] in
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        })
    }
}
/* bounceOut(duration:) Test */
let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 360, height: 360))
mainView.translatesAutoresizingMaskIntoConstraints = false
mainView.backgroundColor = UIColor.white

PlaygroundPage.current.liveView = mainView

//let subview = UIView(frame: CGRect(x: 0, y: 0, width: 240, height: 240))
//subview.translatesAutoresizingMaskIntoConstraints = false
//subview.backgroundColor = UIColor.blue
//subview.center.y = mainView.center.y
//subview.center.x = mainView.center.x
//mainView.addSubview(subview)
//
//subview.bounceOut(duration: 2)

class myButton: UIButton {
    
    var imageName: String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        let shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.40).cgColor
        let shadowOffSet = CGSize(width: 0, height: 10.0)
        let shadowOpacity = Float(1.0)
        let shadowRadius = CGFloat(10.0)
        
        self.layer.masksToBounds = false
        self.layer.borderWidth = 3
        self.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).cgColor
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffSet
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
        self.layer.cornerRadius = 0.5 * self.frame.size.width
        self.setImage(UIImage(named: "\(String(describing: imageName))"), for: .normal)
        self.backgroundColor = UIColor.white
        
    }
}

let testButton = myButton(frame: CGRect(x: 20, y: 20, width: 150, height: 150))

mainView.addSubview(testButton)


