//
//  ViewController.swift
//  Xylophone
//
//  Created by Jomar Leano on 9/2/22.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!);
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}

