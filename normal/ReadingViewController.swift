//
//  ReadingViewController.swift
//  normal
//
//  Created by Emma Davis on 7/18/19.
//  Copyright © 2019 Emma Davis. All rights reserved.
//
import UIKit
import SafariServices

class ReadingViewController: UIViewController {
    
    
    @IBAction func Anxiety(_ sender: Any) {
        showSafariVC(for:"https://www.health.harvard.edu/topics/anxiety")
    }
    
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            //Show an invalid URL error alert
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    @IBAction func Depression(_ sender: UIButton) {
        showSafariVC(for: "https://www.nationwidechildrens.org/conditions/depression")
    }
    @IBAction func PTSD(_ sender: UIButton) {
        showSafariVC(for: "https://www.psychiatry.org/patients-families/ptsd/what-is-ptsd")
    }
    @IBAction func MORE(_ sender: UIButton) {
        showSafariVC(for: "https://www.nami.org/Learn-More/Mental-Health-Conditions")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


