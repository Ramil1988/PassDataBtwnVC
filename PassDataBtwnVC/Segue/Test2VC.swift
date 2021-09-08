//
//  Test2VC.swift
//  Finances
//
//  Created by Ramil Sharapov on 2021-08-04.
//

import UIKit

class Test2VC: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var nickName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = nickName
    }
    



}
