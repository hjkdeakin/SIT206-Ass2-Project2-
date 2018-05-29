//  WebViewController.swift

// Import Required Module
import UIKit

// Declare class and inherit from UIViewController
class WebViewController: UIViewController {
    
    // Declare variable
    var webURL : String?

    // Property
    @IBOutlet weak var WEB: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the WebPage when the ViewController is called
        WEB.loadRequest(URLRequest(url: (URL(string: webURL!))!))
    }
}
