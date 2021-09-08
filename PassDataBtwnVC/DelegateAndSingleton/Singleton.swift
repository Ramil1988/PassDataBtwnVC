//
//  Singleton.swift
//  PassDataBtwnVC
//
//  Created by Ramil Sharapov on 2021-08-05.
//

import Foundation


class Singleton {
    //Using singleton guarantees that your app will only contain a single instance of a certain class that can be accessed anywhere in the project. It's sort of a global variable. An example of when it would be acceptable to use singleton would be managing the app's settings. Imagine the user turns off the sound on the Settings View Controller. This choice needs to be reflected through the rest of the app. The main reason why so many people use this pattern is that it is really simple to implement. Check it out:
    static let instance = Singleton()

    //creates the global variable
    var text = "Ramil + Shaira + Iasmina + Milana"

}



