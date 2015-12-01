//
//  StepDetailViewController.swift
//  
//
//  Created by admin on 11/24/15.
//
//

import UIKit

class StepDetailViewController: UIViewController {


    @IBOutlet weak var stepName: UITextField!
    var name: String!
    
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        if identifier == "doneSegue" {
            
            if (stepName.text.isEmpty) {
                
                let alert = UIAlertView()
                alert.title = "Blank!"
                alert.message = "Enter a title or cancel"
                alert.addButtonWithTitle("Ok")
                alert.show()
                
                return false
            }
                
            else {
                return true
            }
        }
        
        // by default, transition
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "doneSegue" {
            name = stepName.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets cursor focus on text field on load
        self.stepName.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}