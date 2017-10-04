//
//  ViewController.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        displayItems()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayItems() {
        let request = Router.getItems()
        
        API.sharedInstance.sendRequest(request: request) { (json, erorr) in
            if erorr == false {
                if let json = json {
                   print(json)
                    
                    
//                    DispatchQueue.main.async {
//                        self.categoriesCollectionView?.reloadData()
//                    }
                }
            }
        }
    }


}

