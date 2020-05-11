//
//  SettingsViewController.swift
//  tippy
//
//  Created by Joseph  DeMario on 5/9/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentIndex = defaults.integer(forKey: "tip_percent")

        tipPercentControl.selectedSegmentIndex = percentIndex
    }
    
    @IBAction func onDefaultPercentChanged(sender: AnyObject) {
        let defaults = UserDefaults.standard
        let index = tipPercentControl.selectedSegmentIndex

        defaults.set(index, forKey: "tip_percent")
        defaults.synchronize()
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
