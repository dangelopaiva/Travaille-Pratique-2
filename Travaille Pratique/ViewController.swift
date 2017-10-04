//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // 
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var front_21: UIView!
    @IBOutlet weak var front_22: UIView!
    @IBOutlet weak var front_23: UIView!
    @IBOutlet weak var front_24: UIView!
    @IBOutlet weak var front_31: UIView!
    @IBOutlet weak var front_32: UIView!
    @IBOutlet weak var front_33: UIView!
    @IBOutlet weak var front_34: UIView!
    
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var back_21: UIView!
    @IBOutlet weak var back_22: UIView!
    @IBOutlet weak var back_23: UIView!
    @IBOutlet weak var back_24: UIView!
    @IBOutlet weak var back_31: UIView!
    @IBOutlet weak var back_32: UIView!
    @IBOutlet weak var back_33: UIView!
    @IBOutlet weak var back_34: UIView!
    
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView21: UIImageView!
    @IBOutlet weak var imgView22: UIImageView!
    @IBOutlet weak var imgView23: UIImageView!
    @IBOutlet weak var imgView24: UIImageView!
    @IBOutlet weak var imgView31: UIImageView!
    @IBOutlet weak var imgView32: UIImageView!
    @IBOutlet weak var imgView33: UIImageView!
    @IBOutlet weak var imgView34: UIImageView!
    
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    @IBOutlet weak var card_21: UIView!
    @IBOutlet weak var card_22: UIView!
    @IBOutlet weak var card_23: UIView!
    @IBOutlet weak var card_24: UIView!
    @IBOutlet weak var card_31: UIView!
    @IBOutlet weak var card_32: UIView!
    @IBOutlet weak var card_33: UIView!
    @IBOutlet weak var card_34: UIView!
    
    @IBOutlet weak var reset: UIButton!
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var cards: [UIView]!
    var audioFlipCard: AVAudioPlayer?
    var audioJungle: AVAudioPlayer?
    var cont: Int = 0;
    var arrayOfAnimalNames: [String] =
        ["giraffe.png", "giraffe.png", "elephant.png", "elephant.png",
         "monkey.png" , "monkey.png" , "hippo.png", "hippo.png",
         "rhinoce.png", "rhinoce.png", "zebra.png", "zebra.png" ]
    
    
    // ============================
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card_11, card_12, card_13, card_14,
                 card_21, card_22, card_23, card_24,
                 card_31, card_32, card_33, card_34]
        
        arrayOfImageViews = [imgView11, imgView12, imgView13, imgView14,
                             imgView21, imgView22, imgView23, imgView24,
                             imgView31, imgView32, imgView33, imgView34]
        randomAnimalNames()
        setImagesToCard()
        resetAnimationIn()
        soundAnimation()
        audioJungle?.play()
        
    }
    
    
    
    // ============================
    @IBAction func showCard(_ sender: UIButton) {
        
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        audioFlipCard?.play()
        audioJungle?.play()

        
        switch sender.tag {
        case 0:
            flipCard(from: front_11, to: back_11)
            arrayChosenCards.append(arrayOfRandomAnimalNames[0])
            arrayChosenViews.append(card_11)
            arrayOfShowingBacks.append(back_11)
            arrayOfHidingFronts.append(front_11)
            
        case 1:
            flipCard(from: front_12, to: back_12)
            arrayChosenCards.append(arrayOfRandomAnimalNames[1])
            arrayChosenViews.append(card_12)
            arrayOfShowingBacks.append(back_12)
            arrayOfHidingFronts.append(front_12)
        case 2:
            flipCard(from: front_13, to: back_13)
            arrayChosenCards.append(arrayOfRandomAnimalNames[2])
            arrayChosenViews.append(card_13)
            arrayOfShowingBacks.append(back_13)
            arrayOfHidingFronts.append(front_13)
        case 3:
            flipCard(from: front_14, to: back_14)
            arrayChosenCards.append(arrayOfRandomAnimalNames[3])
            arrayChosenViews.append(card_14)
            arrayOfShowingBacks.append(back_14)
            arrayOfHidingFronts.append(front_14)
        case 4:
            flipCard(from: front_21, to: back_21)
            arrayChosenCards.append(arrayOfRandomAnimalNames[4])
            arrayChosenViews.append(card_21)
            arrayOfShowingBacks.append(back_21)
            arrayOfHidingFronts.append(front_21)
        case 5:
            flipCard(from: front_22, to: back_22)
            arrayChosenCards.append(arrayOfRandomAnimalNames[5])
            arrayChosenViews.append(card_22)
            arrayOfShowingBacks.append(back_22)
            arrayOfHidingFronts.append(front_22)
        case 6:
            flipCard(from: front_23, to: back_23)
            arrayChosenCards.append(arrayOfRandomAnimalNames[6])
            arrayChosenViews.append(card_23)
            arrayOfShowingBacks.append(back_23)
            arrayOfHidingFronts.append(front_23)
        case 7:
            flipCard(from: front_24, to: back_24)
            arrayChosenCards.append(arrayOfRandomAnimalNames[7])
            arrayChosenViews.append(card_24)
            arrayOfShowingBacks.append(back_24)
            arrayOfHidingFronts.append(front_24)
        case 8:
            flipCard(from: front_31, to: back_31)
            arrayChosenCards.append(arrayOfRandomAnimalNames[8])
            arrayChosenViews.append(card_31)
            arrayOfShowingBacks.append(back_31)
            arrayOfHidingFronts.append(front_31)
        case 9:
            flipCard(from: front_32, to: back_32)
            arrayChosenCards.append(arrayOfRandomAnimalNames[9])
            arrayChosenViews.append(card_32)
            arrayOfShowingBacks.append(back_32)
            arrayOfHidingFronts.append(front_32)
        case 10:
            flipCard(from: front_33, to: back_33)
            arrayChosenCards.append(arrayOfRandomAnimalNames[10])
            arrayChosenViews.append(card_33)
            arrayOfShowingBacks.append(back_33)
            arrayOfHidingFronts.append(front_33)
        case 11:
            flipCard(from: front_34, to: back_34)
            arrayChosenCards.append(arrayOfRandomAnimalNames[11])
            arrayChosenViews.append(card_34)
            arrayOfShowingBacks.append(back_34)
            arrayOfHidingFronts.append(front_34)
        default:
            break
        }
        
        verification()
        
        if cont == 6{
            performSegue(withIdentifier: "seg", sender: nil)
        }
        
        
    }
    
    // ============================
    // Fonction qui tourne les cartes
    func flipCard(from: UIView, to: UIView){
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {from.isHidden = true})
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {to.isHidden = false})
   
    }
    
    // ============================
    // Fonction qui charge les images
    func setImagesToCard() {
        var number = 0
        for imgView in arrayOfImageViews {
            print(arrayOfRandomAnimalNames.count)
            imgView.image = UIImage (named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    
    // ============================
    // Fonction qui change l'ordre des cartes
    func randomAnimalNames () {
        let numberOfAnimals = arrayOfAnimalNames.count
        
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    
    // ==============================
    // Fonction qui valide le nombre de cartes face
    func verification () {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1]{
                cont = cont+1
                Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
            } else {
                arrayChosenViews = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    
    // ==============================
    @objc func hideCards() {
        arrayChosenViews[0].isHidden = true
        arrayChosenViews[1].isHidden = true
        arrayChosenViews = []
    }
    
    // ==============================
    // Fonction qui démarre les lettres
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 1,
                                 target: self,
                                 selector: (#selector(reflip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    
    // ==============================
    // Fonction que lorsque vous cliquez sur le bouton, il redémarre les cartes
    @objc func reflip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    // ==============================
    @IBAction func Button(_ sender: UIButton) {
        for card in cards {
            card.isHidden = false
        }
        arrayOfAnimalNames =
            ["giraffe.png", "giraffe.png", "elephant.png", "elephant.png",
             "monkey.png" , "monkey.png" , "hippo.png", "hippo.png",
             "rhinoce.png", "rhinoce.png", "zebra.png", "zebra.png" ]
        arrayOfRandomAnimalNames = []
        randomAnimalNames()
        setImagesToCard()
        reflip()
    }
    
    // =======================
    // Fonction qui fait pousser le bouton
    private func resetAnimationIn(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.reset.alpha = 0.8
            self.reset.transform = CGAffineTransform(scaleX:0.7, y:0.7)
        }) { (true) in
            self.resetAnimationOut()
        }
    }
    
    // =======================
    // Fonction qui fait pousser le bouton
    private func resetAnimationOut(){
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.reset.alpha = 1
            self.reset.transform = CGAffineTransform(scaleX:0.9, y:0.9)
        }) { (true) in
            self.resetAnimationIn()
        }
    }
    
    
    
    //=======================
    // Fonction qui émet du son
    func soundAnimation () {
        
        //--------------------
        guard let urlFlipCard = Bundle.main.url(forResource: "flip", withExtension: "mp3")
            else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            audioFlipCard = try AVAudioPlayer(contentsOf: urlFlipCard)
        } catch let error {
            print(error.localizedDescription)
        }
        
        //--------------------
        guard let urlJungle = Bundle.main.url(forResource: "jungle1", withExtension: "mp3")
            else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            audioJungle = try AVAudioPlayer(contentsOf: urlJungle)
        } catch let error {
            print(error.localizedDescription)
        }
                
    }
    
    
}



