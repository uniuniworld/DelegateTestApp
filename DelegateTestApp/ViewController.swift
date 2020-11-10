//
//  ViewController.swift
//  DelegateTestApp
//
//  Created by Takahiro Kirifu on 2020/11/10.
//

import UIKit

class ViewController: UIViewController {
    
    let customCell = CustomCell()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Cellが生成されていないところの線を消す
        tableView.tableFooterView = UIView()
        
        registerCell(tableView: tableView, cellName: customCell.cellIdentifier)
        
    }
    
    func registerCell(tableView: UITableView, cellName: String) {
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCell.cellIdentifier, for: indexPath) as! CustomCell
        
        cell.customCellDelegate = self
        
        return cell
    }
    
    
}

extension ViewController: CustomCellDelegate {
    func tapButton() {
        print("2: タップされたよ")
        
        // segue実行
        self.performSegue(withIdentifier: "nextVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nextVC" {
            
            let nvc = segue.destination as! NextViewController
            
            nvc.labelText = customCell.cellIdentifier
        }
    }
}



