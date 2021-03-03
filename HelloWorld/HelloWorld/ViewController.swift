//
//  ViewController.swift
//  HelloWorld
//
//  Created by oscar nunez on 2/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {

        // Initialize the dictionary for the emoji icons
        // If you forgot how to do it, refer to the previous chapter
        // Fill in the code below
        
        var emoji = [String:String]()
        emoji["😿"] = "aww im a sad cat"
        emoji["✌🏽"] = "peace my dude"
        emoji["😡"] = "grr"




        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender

        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {

            // Get the meaning of the emoji from the dictionary
            // Fill in the code below
            for (symbol, statement) in emoji {
                print ("hope it worked'\(statement)'")
            
            

            // Change the line below to display the meaning of the emoji instead of Hello World
                let alertController = UIAlertController(title: "This is what the emoji means", message: statement, preferredStyle: UIAlertController.Style.alert)

                        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        present(alertController, animated: true, completion: nil)
                    }

                }

    }
}
