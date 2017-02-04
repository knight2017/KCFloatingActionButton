//
//  floatViewController.swift
//  KCFloatingActionButton-Sample
//
//  Created by EthanW on 2017-01-24.
//  Copyright © 2017 kciter. All rights reserved.
//

import UIKit

class floatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var testTableView: floatButtontableView!
    var items = [Int]()
    @IBOutlet weak var toggle: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView!.delegate = self
        testTableView!.dataSource = self
//        testTableView!.register(flaotTableViewCell.self, forCellReuseIdentifier: "floatCell")
//        self.view.addSubview(testTableView!)
//        self.view.add
//        loadData()

    }

    func loadData() {
        for i in 1...5 {
            self.items.append(i)
        }
        print(self.items)
       
    }
    
  
    
    @IBAction func oddAndEven(_ sender: Any) {
        print(self.toggle.selectedSegmentIndex)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "floatCell", for: indexPath) as! flaotTableViewCell
        cell.number.text = "909"
//        cell.number.text = "\(self.items[(indexPath as NSIndexPath).row])"
        return cell
    }
//
//    func dismiss() {
//        self.navigationController?.dismissViewControllerAnimated(true, completion: { () -> Void in})
//    }
//    
    
    
    

}
