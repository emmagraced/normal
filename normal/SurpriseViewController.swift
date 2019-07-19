//
//  SurpriseViewController.swift
//  normal
//
//  Created by Emma Davis on 7/18/19.
//  Copyright © 2019 Emma Davis. All rights reserved.
//

import UIKit

class SurpriseViewController: UIViewController {
    
    @IBAction func showMessage(sender: UIButton){
        
        let emojis = ["☀️": "surprise"]
        var customMessages = ["surprise" : ["you're beautiful", "i love you", "you'll be okay", "it gets better", "thank you for being you"],]
        
        let selectedEmotion = sender.titleLabel?.text
        var titletext = emojis[selectedEmotion!]!
        let randomMessages =  customMessages[emojis[selectedEmotion!]!]!.shuffled()
        let emoji =  randomMessages[0]
        let alertController = UIAlertController (title: titletext, message: emoji, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
