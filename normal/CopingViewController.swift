//
//  copingViewController.swift
//  normal
//
//  Created by Emma Davis on 7/18/19.
//  Copyright © 2019 Emma Davis. All rights reserved.
//
import UIKit
import SafariServices

class CopingViewController: UIViewController {
    
    @IBAction func showMessage(sender: UIButton){
        
        let emojis = ["☁️": "coping"]
        var customMessages = ["coping" : ["practice taking deep breaths to calm you down and relax your body", "all of that anger and frustration can be written out, and once it is all down on paper, you feel like a weight has been lifted.", "have a couple of close friends that know and understand your situation. Call them when you are overwhelmed and feeling weak. sometimes talking it out is all you need."],]
        
        let selectedEmotion = sender.titleLabel?.text
        var titletext = emojis[selectedEmotion!]!
        let randomMessages =  customMessages[emojis[selectedEmotion!]!]!.shuffled()
        let emoji =  randomMessages[0]
        let alertController = UIAlertController (title: titletext, message: emoji, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func watchButtonTapped(_ sender: UIButton) {
        showSafariVC(for: "https://www.goodtherapy.org/blog/psychpedia/coping-mechanisms")
    
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController (url: url)
        present(safariVC, animated: true)
    }
    
    @IBAction func websiteE(_ sender: Any) {
        showSafariVC(for: "https://www.semel.ucla.edu/dual-diagnosis-program/News_and_Resources/How_Do_You_Cope")
    }
    
    @IBAction func website3(_ sender: Any) {
        showSafariVC(for: "https://www.teenvogue.com/story/best-therapist-advice")
    }
    
    @IBAction func website4(_ sender: Any) {
        showSafariVC(for: "https://www.helpguide.org/")
    }
    
    @IBAction func website5(_ sender: Any) {
        showSafariVC(for: "https://www.nami.org/Blogs/NAMI-Blog/October-2017/Stigmatizing-Media-Portrayals-What-Can-We-Do")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}





