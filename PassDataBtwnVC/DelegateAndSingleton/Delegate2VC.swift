//
//  Delegate2VC.swift
//  PassDataBtwnVC
//
//  Created by Ramil Sharapov on 2021-08-04.
//


import UIKit

// Begin creating the delegate protocol. It is a good practice to name it after the class. This protocol says what a class that wants to conform to it (in this case, a class that wants to deliver a juice) needs to implement:
protocol NameDelegate {
    func choosedName(_ name: String)
}

class Delegate2VC: UIViewController {
    //We need to inform this VC that something happened in Delegate1VC. To do that, we pass around the information using the delegate. Create the delegate property.
    var delegate: NameDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Also, create a method (in this case, we used the button-pressed action) to inform someone about when the action was taken:
    @IBAction func didPressRamilButton(_ sender: UIButton) {
        sender.titleLabel?.text = "Ramil"
        let name = sender.titleLabel?.text ?? "Nothing from Type 1"
        //warns the delegate that something happened and triggers the function to handle it
        delegate?.choosedName(name)
        //returns to the previous viewController
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didPressShairaButton(_ sender: UIButton) {
        sender.titleLabel?.text = "Shaira"
        
        let name = sender.titleLabel?.text ?? "Nothing from Type 2"
        delegate?.choosedName(name)

        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
}

