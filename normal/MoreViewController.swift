//
//  MoreViewController.swift
//  normal
//
//  Created by Emma Davis on 7/18/19.
//  Copyright © 2019 Emma Davis. All rights reserved.
//

import UIKit
import SafariServices

class MoreViewController: UIViewController {

    @IBAction func trevorProject(_ sender: Any) {
        showSafariVC(for: "https://www.thetrevorproject.org/get-help-now/")
    }
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController (url: url)
        present(safariVC, animated: true)
    }
    
    @IBAction func nationalSH(_ sender: Any) {
        showSafariVC(for: "https://suicidepreventionlifeline.org/talk-to-someone-now/")
    }
    
    @IBAction func therapist(_ sender: Any) {
        showSafariVC(for: "https://www.goodtherapy.org/find-therapist.html")
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
