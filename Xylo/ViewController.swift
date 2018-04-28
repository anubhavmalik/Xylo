//
//  ViewController.swift
//  Xylo
//
//  Created by Anubhav Malik on 28/04/18.
//  Copyright © 2018 Anubhav Malik. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1",ofType: "wav")!)
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        let tag = sender.tag
        
        playSound(tag: tag)
        
    }
    func playSound(tag : Int){
        
        let soundURL = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


