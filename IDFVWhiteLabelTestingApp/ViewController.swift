//
//  ViewController.swift
//  IDFVWhiteLabelTestingApp
//
//  Created by Moris Gateno on 13/04/2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBAction func linkToREADME(_ sender: UIButton) {
        if let url = URL(string: "https://github.com/morisgateno-appsflyer/IDFVWhiteLabelTestingApp/blob/main/README.md"){
            UIApplication.shared.open(url)
        }
    }
    
    @IBOutlet weak var idfvView: UIView!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var IDFVLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1.0)
        
        idfvView.layer.masksToBounds = true
        idfvView.layer.cornerRadius = 7.0
        
        displayIDFV()
        
        linkButton.tintColor = UIColor(red: 59/255, green: 67/255, blue: 77/255, alpha: 1)
        linkButton.layer.masksToBounds = true
        linkButton.layer.cornerRadius = 15.0
    }
    func displayIDFV(){
        self.IDFVLabel.text = UIDevice.current.identifierForVendor?.uuidString ?? "No IDFV"
        self.IDFVLabel.sizeToFit()
    }

}

