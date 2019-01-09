//
//  ViewController.swift
//  TableViewCellLifeCicle
//
//  Created by jollyjoester on 2019/01/09.
//  Copyright © 2019 jollyjoester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let sampleData = [
        "test1",
        "test2",
        "test3",
        "test4",
        "test5",
        "test6",
        "test7",
        "test8",
        "test9",
        "test10",
        "test11",
        "test12",
        "test13",
        "test14",
        "test15",
        "test16",
        "test17",
        "test18",
        "test19",
        "test20"
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

extension ViewController: UITableViewDelegate {


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sampleData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            fatalError()
        }
        
        print(sampleData[indexPath.row])
        
        cell.textLabel?.text = sampleData[indexPath.row]
        
        return cell
        
    }
    
    
    
    
}
