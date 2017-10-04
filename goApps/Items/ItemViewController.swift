//
//  ViewController.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var itemTableView: UITableView!
    
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTableView.dataSource = self as! UITableViewDataSource
        displayItems()
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
                    self.items = Item.arrayFromJSON(json: json)
                    
                    DispatchQueue.main.async {
                        self.itemTableView?.reloadData()
                    }
                }
            }
        }
    }
}

extension ItemViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
