//
//  MyJSONProtocol.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol MyJSONProtocol {
    associatedtype T
    
    func fromJSON(json: JSON)
}
