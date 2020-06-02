import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var timerTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer?
    
    let eggTimes = ["Soft":5, "Medium":7, "Hard":720]
    var secondsRemaining = 0
    var timer = Timer()
    var prog = Float(1.0)
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        self.timer.invalidate()
        self.progressBar.progress = self.prog
        var player: AVAudioPlayer!
        
        let hardness = sender.currentTitle!
        self.secondsRemaining = eggTimes[hardness]!
        let incriment = 1.0/Float(self.secondsRemaining)
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
                self.prog -= incriment
                self.progressBar.progress = self.prog
                
        } else {
                Timer.invalidate()
                self.timerTitle.text = "Time's UP!"
                self.progressBar.progress = 1.0
                
                let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                player = try! AVAudioPlayer(contentsOf: url!)
                player.play()
                //print("Time's UP!")
            }
        }
    }
    
    

    
}
