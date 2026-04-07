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
            performSegue(withIdentifier: "showMember", sender: self)
        } else if indexPath.section == 1{
            performSegue(withIdentifier: "showProject", sender: self)
        } else if indexPath.section == 2{
            performSegue(withIdentifier: "showImage", sender: self)
        }
    }


}

