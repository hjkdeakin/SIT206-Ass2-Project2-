//  CertificationDetailsViewController.swift

// Import Required Modules
import UIKit

// Declare class that inherits from UIViewController
class CertificationDetailsViewController: UIViewController {
    
    // Declare variable of type "Certification"
    var selectedCertification : Certification?
    
    // Properties
    @IBOutlet weak var certificationName: UILabel!
    @IBOutlet weak var certificationImage: UIImageView!
    @IBOutlet weak var examCode: UILabel!
    @IBOutlet weak var examPrice: UILabel!
    @IBOutlet weak var certificationDescription: UILabel!
    
    // Prepare for the ViewController to display
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToWebView" {
            let destVC = segue.destination as! WebViewController
            destVC.webURL = selectedCertification?.website
        }
    }
    
    override func viewWillAppear(_ anited: Bool) {
        // Load this just before the ViewController is about to be displayed
        if selectedCertification != nil {
            certificationName.text = selectedCertification?.name
            certificationImage.image = UIImage(named: "\(selectedCertification!.image)")
            examCode.text = selectedCertification?.examCode
            examPrice.text = selectedCertification?.examPrice
            certificationDescription.text = selectedCertification?.description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
