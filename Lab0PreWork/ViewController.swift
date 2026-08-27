//
//  ViewController.swift
//  Lab0PreWork
//
//  Created by Julia Falcao on 8/25/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBAction func stepperDidChange(_ sender: UIStepper) {

         numberOfPets.text = "\(Int(sender.value))"
     }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPets: UILabel!
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

        // Lets us choose the title we have selected from the segmented control
        let year = yearSegmentedControl.titleForSegment(
            at: yearSegmentedControl.selectedSegmentIndex
        )

        // Creating a constant of type String that holds the introduction
        let introduction = """
        My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolTextField.text!).

        I am currently in my \(year!) year and I own \(numberOfPets.text!) dogs.

        It is \(morePetsSwitch.isOn) that I want more pets.
        """

        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberOfPets.text = "0"
    }
    

}

