
// Import Required Modules
import UIKit
import AVFoundation

// Declare class that inherits from UITableViewController
class CertificationTableViewController: UITableViewController {
    
    // Create Audio Player object
    var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        // Load this block of code when ViewController did load
        super.viewDidLoad()
        
        // Grab the certifications objects
        Utilities.loadCertifications()
        
        // Push the Table View below the bar
        self.tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
        // Music Player
        do {
            let audioPath = Bundle.main.path(forResource: "hello", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            
        }
        
        let session = AVAudioSession.sharedInstance()
        
        // Exception handling in case we get any errors
        do
        {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch
        {
            // Can add code to catch it here. Like printing a message.
        }
        // Start playing music
        player.play()
    }
    
    // Properties
    @IBOutlet weak var speakerButtonLabel: UIBarButtonItem!
    
    // When stop music icon is clicked
    @IBAction func stopMusic(_ sender: UIBarButtonItem) {
    
        // Stop / start the music player and change the icon
        if player.isPlaying {
            player.stop()
            speakerButtonLabel.image = UIImage(named: "SPEAKEROFF")
        } else {
                player.play()
                speakerButtonLabel.image = UIImage(named: "SPEAKERON")
        }
    }
    
    
    // Set one table section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Get number of objects in array
        return Utilities.certifications.count
    }

    // Fill the table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripCell", for: indexPath)
        cell.textLabel?.text = "\(Utilities.certifications[indexPath.row].name)"
        cell.imageView?.image = UIImage(named: "\(Utilities.certifications[indexPath.row].image)")

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Segue
        if segue.identifier == "segueCertDetails" {
            // If not nil
            if let indexPath = tableView.indexPathForSelectedRow {
                let destVC = segue.destination as! CertificationDetailsViewController
                
                // Update variable in CertificationDetailsViewController
                destVC.selectedCertification = Utilities.certifications[indexPath.row]
            }
        }
    }
}
