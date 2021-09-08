//
//  Delegate1VC.swift
//  PassDataBtwnVC
//
//  Created by Ramil Sharapov on 2021-08-04.
//

import UIKit

//Create a class that will conform to the NameDelegate protocol. Use NameDelegate on the class declaration. When doing this, the compiler will complain that you need to implement the choosedName method. Inside the method, inform the client that the button on the Delegate2VC is ready to be tapped. Remember to assign the delegate to self when calling the  Delegate1VC:

class Delegate1VC: UIViewController, NameDelegate {
    
    //the label that informs the clients choice
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var singletonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singletonLabel.text = Singleton.instance.text
    }

    @IBAction func didPressButton(_ sender: UIButton) {
       if let vc = storyboard?.instantiateViewController(identifier: "Delegate2VC") as? Delegate2VC {
            vc.delegate = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    //this method is called when we choose the name on the other ViewController
    func choosedName(_ name: String) {
        myLabel.text = "Your choice is \(name)"
    }
}

