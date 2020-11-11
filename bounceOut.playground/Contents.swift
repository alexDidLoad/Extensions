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
mainView.backgroundColor = UIColor.red

PlaygroundPage.current.liveView = mainView

let subview = UIView(frame: CGRect(x: 0, y: 0, width: 240, height: 240))
subview.translatesAutoresizingMaskIntoConstraints = false
subview.backgroundColor = UIColor.blue
subview.center.y = mainView.center.y
subview.center.x = mainView.center.x
mainView.addSubview(subview)

subview.bounceOut(duration: 2)

