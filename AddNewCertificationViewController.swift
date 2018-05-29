//  AddNewCertificationViewController.swift

// Import Required Modules
import UIKit
import CoreData

// Declare class that inherits from UIViewController
class AddNewCertificationViewController: UIViewController {
    
    // Properties
    @IBOutlet weak var vendorTextField: UITextField!
    @IBOutlet weak var certificationNameTextField: UITextField!
    @IBOutlet weak var certificationIDTextField: UITextField!
    @IBOutlet weak var dateCertifiedPickerView: UIDatePicker!
    @IBOutlet weak var expiryDatePickerView: UIDatePicker!
    @IBOutlet weak var commentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Gets called when the Save button is pressed
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        // Create a new object
        let myCert : MyCertificationsDB = NSEntityDescription.insertNewObject(forEntityName: "MyCertificationsDB", into: DatabaseController.persistentContainer.viewContext) as! MyCertificationsDB
        
        // Input validation. This one could be more strict. Will create "Default Cert" if text field is empty to avoid blank row in TableView.
        if (vendorTextField.text?.isEmpty)! {
            myCert.vendorName = "Default Cert"
        } else {
            myCert.vendorName = vendorTextField.text!
        }
        
        if (certificationNameTextField.text?.isEmpty)! {
            myCert.certificationName = ""
        } else {
            myCert.certificationName = certificationNameTextField.text!
        }
        
        if (certificationIDTextField.text?.isEmpty)! {
            myCert.certificationID = ""
        } else {
            myCert.certificationID = certificationIDTextField.text
        }
        
        if (commentTextField.text?.isEmpty)! {
            myCert.comment = ""
        } else {
            myCert.comment = commentTextField.text
        }
        
        // Create DateFormatter object
        let formatter1 = DateFormatter()
        
        // Format the date
        formatter1.dateFormat = "dd.MM.yyyy"
        
        // Update the object
        myCert.dateCertified = formatter1.string(from: dateCertifiedPickerView.date)
        
        // Create DateFormatter object
        let formatter2 = DateFormatter()
        
        // Format the date
        formatter2.dateFormat = "dd.MM.yyyy"
        
        // Update the object
        myCert.expiryDate = formatter2.string(from: expiryDatePickerView.date)
        
        // Call saveContext in DatabaseController and save the object to CoreData
        DatabaseController.saveContext()
        
        // Create AlertView
        let alert = UIAlertController(title: "Success", message: "Your Certification has been saved!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"OK",style: .default, handler:{(acton)in
            alert.dismiss(animated: true, completion: nil)
            
            // Move back to the TableView
            self.performSegue(withIdentifier: "backToCertificationsSegue2", sender: nil)
        }))
        self.present(alert,animated: true,completion: nil)
    }
}
