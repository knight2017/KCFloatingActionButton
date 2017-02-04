//
//  segCtrlViewController.swift
//  KCFloatingActionButton-Sample
//
//  Created by EthanW on 2017-01-25.
//  Copyright © 2017 kciter. All rights reserved.
//

import UIKit

class segCtrlViewController: UIViewController {
    
    
    @IBOutlet weak var segCtrl: ADVSegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setCtrl(_ sender: Any) {
        
        print(self.segCtrl.selectedIndex)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
