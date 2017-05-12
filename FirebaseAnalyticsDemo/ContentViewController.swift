//
//  ContentViewController.swift
//  FirebaseAnalyticsDemo
//
//  Created by Roger Zhang on 12/5/17.
//  Copyright © 2017 Roger Zhang. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    let counterTemplate = "Counter value: "
    var counter = 0
    @IBOutlet weak var counterIndication: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func counterButtonClicked(_ sender: UIButton) {
        counter = counter + 1
        let value = counter
        self.counterIndication.text = self.counterTemplate + String(value)
    }

    @IBAction func resetButtonClicked(_ sender: UIButton) {
        self.counterIndication.text = "Content View"
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
