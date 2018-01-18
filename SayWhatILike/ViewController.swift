//
//  ViewController.swift
//  SayWhatILike
//
//  Created by kamontat chantrachirathumrong on 18/1/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputField: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputField.text = "default_label".localized
    }
    
    @IBAction func sayWord(_ sender: UIButton) {
        if let text = inputTextField.text {
            if text == "" {
                outputField.text = "default_label".localized
            } else {
                outputField.text = "\("iup".localized) is \(text.lowercased())";
            }
        } else {
            outputField.text = "default_label".localized
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
