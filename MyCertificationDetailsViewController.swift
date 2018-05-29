//  MyCertificationDetailsViewController.swift

// Import Required Module
import UIKit

// Declare class that inherit from UIViewController and UIPickerViewDelegate
class MyCertificationDetailsViewController: UIViewController, UIPickerViewDelegate {
    
    // Declare variable of type "MyCertificationsDB"
    var selectedCertification : MyCertificationsDB?
    
    // Properties
    @IBOutlet weak var certificationNameItem: UINavigationItem!
    @IBOutlet weak var vendorTextField: UITextField!
    @IBOutlet weak var certificationTextField: UITextField!
    @IBOutlet weak var certificationIDTextField: UITextField!
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var dateCertified: UIDatePicker!
    @IBOutlet weak var expiryDate: UIDatePicker!
    
    // Method that gets called when the "dateCertified" UIPickerView gets changed
    @IBAction func dateCertifiedPickerValueChanged(_ sender: UIDatePicker) {
        // Create a DateFormatter object
        let formatter = DateFormatter()
        // Format the date properly
        formatter.dateFormat = "dd.MM.yyyy"
        // Update the object with new date in proper format
        selectedCertification?.dateCertified = formatter.string(from: dateCertified.date)
    }
    
    // Method that gets called when the "expiryDate" UIPickerView gets changed
    @IBAction func expiryDatePickerValueChanged(_ sender: UIDatePicker) {
        // Create a DateFormatter object
        let formatter = DateFormatter()
        // Format the date properly
        formatter.dateFormat = "dd.MM.yyyy"
        // Update the object with new date in proper format
        selectedCertification?.expiryDate = formatter.string(from: expiryDate.date)
    }
    
    // Method that gets called when the "Save" button is clicked
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
        // Unwrap and update the object with values from the textfields
        selectedCertification?.vendorName = vendorTextField.text!
        selectedCertification?.certificationName = certificationTextField.text!
        selectedCertification?.certificationID = certificationIDTextField.text!
        selectedCertification?.comment = commentTextField.text!
        
        // Call the saveContext method in the DatabaseController
        DatabaseController.saveContext()
        
        // No biggie though! ;-)
        
        // Show AlertView to inform user that certification is updated.
        let alert = UIAlertController(title: "Success", message: "Your Certification has been updated!", preferredStyle: .alert)
        // Create "OK" button
        alert.addAction(UIAlertAction(title:"OK",style: .default, handler:{(acton)in
            alert.dismiss(animated: true, completion: nil)
            // Move back to the TableView
            self.performSegue(withIdentifier: "backToCertificationsSegue", sender: nil)
        }))
        self.present(alert,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ anited: Bool) {
        // Load the data from the objects and populate the text fields
        if selectedCertification != nil {
            certificationNameItem.title = ((selectedCertification?.vendorName)! + " " + (selectedCertification?.certificationName)!)
            vendorTextField.text = selectedCertification?.vendorName
            certificationTextField.text = selectedCertification?.certificationName
            certificationIDTextField.text = selectedCertification?.certificationID

            // Update the UIPickerView for dateCertified based on data from the object
            let dateCertifiedDateFormatter = DateFormatter()
            dateCertifiedDateFormatter.dateFormat = "dd.MM.yyyy"
            let date = dateCertifiedDateFormatter.date(from: (selectedCertification?.dateCertified)!)!
            let calendar = Calendar.current
            let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
            let finalDate = calendar.date(from:components)
            dateCertified.setDate(finalDate!, animated: true)
            
            // Update the UIPickerView for expiryDate based on data from the object
            let expiryDateDateFormatter = DateFormatter()
            expiryDateDateFormatter.dateFormat = "dd.MM.yyyy"
            let date2 = expiryDateDateFormatter.date(from: (selectedCertification?.expiryDate)!)!
            let calendar2 = Calendar.current
            let components2 = calendar2.dateComponents([.year, .month, .day, .hour], from: date2)
            let finalDate2 = calendar2.date(from:components2)
            expiryDate.setDate(finalDate2!, animated: true)
            
            commentTextField.text = selectedCertification?.comment
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}
