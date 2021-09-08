//
//  Test1VC.swift
//  Finances
//
//  Created by Ramil Sharapov on 2021-08-04.
//

import UIKit

class Test1VC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nameForLabel = textField.text ?? ""
        
        let destinationVC = segue.destination as! Test2VC
        destinationVC.nickName = nameForLabel
    }
    
    

}
