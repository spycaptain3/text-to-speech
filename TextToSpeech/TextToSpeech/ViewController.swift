//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Deepak Gupta on 21/04/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TextforSpee: UITextView!
    
    func spo(){
        let utterance = AVSpeechUtterance(string: TextforSpee.text)
    
        utterance.rate = 0.5
    utterance.pitchMultiplier = 2
        utterance.postUtteranceDelay = 2
    utterance.volume = 2
        
        let voice = AVSpeechSynthesisVoice(language: "en-GB")
        
        utterance.voice = voice
        
        let synthesizer = AVSpeechSynthesizer()

        // Tell the synthesizer to speak the utterance.
        synthesizer.speak(utterance)
    }

    @IBAction func txtToSpeech(_ sender: UIButton) {
        
        spo()
        sender.alpha = 0.5

          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
              
    }
    }
    
}

