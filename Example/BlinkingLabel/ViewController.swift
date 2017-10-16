import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 100, y: 200, width: 200, height: 30))
    let toggleButton = UIButton(frame: CGRect(x: 100, y: 260, width: 125, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "Hey, I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        
        toggleButton.setTitle("Stop Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
            toggleButton.setTitle("Start Blinking", for: .normal)
        } else {
            blinkingLabel.startBlinking()
            toggleButton.setTitle("Stop Blinking", for: .normal)
        }
        isBlinking = !isBlinking
    }
    
}
