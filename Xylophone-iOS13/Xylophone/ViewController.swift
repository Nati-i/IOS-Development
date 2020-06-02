import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // use AVAudioPlayer
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // make color faded
        sender.alpha = 0.5
        playSound(letter: sender.currentTitle!)
        // delay action by 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // bring it back to normal color
            sender.alpha = 1.0
        }
    }
    
    func playSound(letter: String) {
        let url = Bundle.main.url(forResource: letter, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
