//
//  customTableViewCell.swift
//  tabelViewDesign
//
//  Created by Greens on 10/07/19.
//  Copyright © 2019 Greens. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    @IBOutlet weak var myPic : UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var subDetailLabel: UILabel!
    
    @IBOutlet weak var btnOutlet: UIButton!
    @IBAction func btn(_ sender: Any)
    {
    
            btnOutlet.backgroundColor = .red
      
    }
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    

    @IBOutlet weak var myView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
