//
//  MainViewController.swift
//  FirebaseAnalyticsDemo
//
//  Created by Roger Zhang on 12/5/17.
//  Copyright © 2017 Roger Zhang. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAnalytics

class MainViewController: UIViewController {

    let ContentViewSegue = "ContentViewSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let titleText = self.navigationItem.title!
        debugPrint("MainView title: \(titleText)")
        
        FIRAnalytics.logEvent(withName: kFIREventSelectContent, parameters: [
            kFIRParameterItemID: "id-\(titleText)" as NSObject,
            kFIRParameterItemName: titleText as NSObject,
            kFIRParameterContentType: "cont" as NSObject
            ])
    }
    
    @IBAction func crashButtonClicked(_ sender: UIButton) {
        FIRCrashMessage("Cause Crash button clicked")
        //fatalError()
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
