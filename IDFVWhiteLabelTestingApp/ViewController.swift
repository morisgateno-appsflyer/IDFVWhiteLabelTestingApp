//
//  ViewController.swift
//  IDFVWhiteLabelTestingApp
//
//  Created by Moris Gateno on 13/04/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var IDFVLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayIDFV()
    }
    func displayIDFV(){
        self.IDFVLabel.text = UIDevice.current.identifierForVendor?.uuidString ?? "No IDFV"
        self.IDFVLabel.sizeToFit()
    }

}

