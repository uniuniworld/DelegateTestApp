//
//  CustomCell.swift
//  DelegateTestApp
//
//  Created by Takahiro Kirifu on 2020/11/10.
//

import UIKit

protocol CustomCellDelegate {
    func tapButton()
}

class CustomCell: UITableViewCell {
    
    let cellIdentifier = "CustomCell"

    var customCellDelegate: CustomCellDelegate?
    
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.customCellDelegate = nil
        
        button.backgroundColor = .purple
        button.setTitle("画面遷移", for: .normal)
        
        
    }
    
    @IBAction func tapButton(_ sender: Any) {
        
        print("1: タップされた")
        self.customCellDelegate?.tapButton()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
