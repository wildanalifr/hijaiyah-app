//
//  ViewController.swift
//  hijaiyah-app
//
//  Created by Wildan on 05/02/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBAction func clickButton(_ sender: UIButton) {
        let currentTitle = sender.titleLabel?.text ?? ""
        playSound(getHijaiyaHuruf(currentTitle))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    func playSound(_ huruf:String){
        print("Huruf: \(huruf)")
        guard let url = Bundle.main.url(forResource: huruf, withExtension: "mp3", subdirectory: "Sound") else {
            print("error")
                   return
               }
               do {
                   player = try AVAudioPlayer(contentsOf: url)
                   player?.play()
               } catch let error {
                   print("Error playing sound: \(error.localizedDescription)")
               }
    }
}

