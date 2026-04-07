//
//  ViewController.swift
//  Group5Proposal2
//
//  Created by James White on 4/6/26.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            performSegue(withIdentifier: "showMember", sender: indexPath)
        } else if indexPath.section == 1{
            performSegue(withIdentifier: "showProject", sender: indexPath)
        } else if indexPath.section == 2{
            performSegue(withIdentifier: "showImage", sender: indexPath)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMember" {
            let tappedIndexPath = sender as! IndexPath
            
            let destinationVC = segue.destination as! MemberViewController
            
            if tappedIndexPath.row == 0{
                destinationVC.incomingName = "Brayden Peeples"
                destinationVC.incomingRole = "In charge of the UI design and implmentation of adding gifts to the registry. Also will look into adding images from personal device into the app."
            } else if tappedIndexPath.row == 1{
                destinationVC.incomingName = "Brady White"
                destinationVC.incomingRole = "Primarily coding the combination of segues. Will ensure tasks are completed on time and hold the deadlines steady. Also will be in charge of the backend of the app."
            }
        } else if segue.identifier == "showProject" {
            let tappedIndexPath = sender as! IndexPath
            
            let destinationVC = segue.destination as! ProjectViewController
            
            if tappedIndexPath.row == 0{
                destinationVC.incomingTitle = "Timeline"
                destinationVC.incomingDetails = "By Friday - Working prototype of the Project\nBy Tuesday (4/14/26) - Implement features\nBy Friday (4/17/26) - Finalizing Project\nBy Tuesday (4/21/26) - Turn in and complete project."
            } else if tappedIndexPath.row == 1{
                destinationVC.incomingTitle = "Key Topics"
                destinationVC.incomingDetails = "1. Auto Layout & Constraints\n2. Dynamic Table Views\n3. Navigation Controllers & Segues\n4. Data Passing\n5. Interactive UI Elements\n6. Optionals & Unwrapping\n7. Delegation Pattern\n8. App Assets & Visuals\n9. Collaborative Workflows (Github)\n10. Alert Controllers"
            }
        }
    }


}

