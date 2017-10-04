

import UIKit
import AVFoundation

class ViewController3: UIViewController {

    var audioFini: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundAnimation()
        restartAnimationIn()
        felicitationsAnimationIn()
        audioFini?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var felicitations: UIButton!
    
    // =======================
    // Fonction qui fait pousser le bouton
    private func restartAnimationIn(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.restart.alpha = 0.8
            self.restart.transform = CGAffineTransform(scaleX:0.7, y:0.7)
        }) { (true) in
            self.restartAnimationOut()
        }
    }
    
    //=======================
    // Fonction qui fait pousser le bouton
    private func restartAnimationOut(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.restart.alpha = 1
            self.restart.transform = CGAffineTransform(scaleX:0.9, y:0.9)
        }) { (true) in
            self.restartAnimationIn()
        }
    }
    
    
    //=======================
    // Fonction qui émet du son
    func soundAnimation() {
        
        //--------------------
        guard let urlFini = Bundle.main.url(forResource: "applaudissements", withExtension: "mp3")
            else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            audioFini = try AVAudioPlayer(contentsOf: urlFini)
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    
    //=======================
    // Fonction qui fait pousser le bouton
    private func felicitationsAnimationIn(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.felicitations.alpha = 0.8
            self.felicitations.transform = CGAffineTransform(scaleX:0.7, y:0.7)
        }) { (true) in
            self.felicitationsAnimationOut()
        }
    }
    
    //=======================
    // Fonction qui fait pousser le bouton
    private func felicitationsAnimationOut(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.felicitations.alpha = 1
            self.felicitations.transform = CGAffineTransform(scaleX:0.9, y:0.9)
        }) { (true) in
            self.felicitationsAnimationIn()
        }
    }

    
    
    
    
    
    
    
    
}
