//
//  MemberViewController.swift
//  Group5Proposal2
//
//  Created by James White on 4/6/26.
//

import UIKit

class MemberViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    
    var incomingName: String = ""
    var incomingRole: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = incomingName
        roleLabel.text = incomingRole
    }
    
}
