//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonAimationIn()
        
    }
    
   
    private func buttonAimationIn(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.button.alpha = 0.8
            self.button.transform = CGAffineTransform(scaleX:0.7, y:0.7)
        }) { (true) in
            self.buttonAnimationOut()
        }
    }
    
    
    private func buttonAnimationOut(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.button.alpha = 1
            self.button.transform = CGAffineTransform(scaleX:0.9, y:0.9)
        }) { (true) in
            self.buttonAimationIn()
        }
    }

    
    
}
