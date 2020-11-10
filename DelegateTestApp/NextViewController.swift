//
//  NextViewController.swift
//  DelegateTestApp
//
//  Created by Takahiro Kirifu on 2020/11/10.
//

import UIKit

class NextViewController: UIViewController {

    var labelText = ""
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText 
        

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
