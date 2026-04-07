//
//  ProjectViewController.swift
//  Group5Proposal2
//
//  Created by James White on 4/6/26.
//

import UIKit

class ProjectViewController: UIViewController {
    

    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var incomingTitle: String = ""
    var incomingDetails: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = incomingTitle
        detailsLabel.text = incomingDetails
    }
 

}
