//
//  Item.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Item: MyJSONProtocol {
    typealias T = Item
    
    static let itemIdField = "id"
    static let itemTitleField = "title"
    static let itemSubtitleField = "subtitle"
    static let itemThumbField = "thumb"
    static let itemColorField = "color"
    
    private var id: Int
    private var title: String
    private var subtitle: String
    private var thumb: String
    private var color: String
    
    init(json: JSON) {
        id = 0
        title = ""
        subtitle = ""
        thumb = ""
        color = ""
        
        fromJSON(json: json)
    }
    
    func getId() -> Int {
        return id
    }
    
    func getTitle() -> String {
        return title
    }
    
    func getSubtitle() -> String {
        return subtitle
    }
    
    func getThumb() -> String {
        return thumb
    }
    
    func getColor() -> String {
        return color
    }
    
    func fromJSON(json: JSON) {
        self.id = json[Item.itemIdField].intValue
        self.title = json[Item.itemTitleField].stringValue
        self.subtitle = json[Item.itemSubtitleField].stringValue
        self.thumb = json[Item.itemThumbField].stringValue
        self.color = json[Item.itemColorField].stringValue
    }
    
    static func arrayFromJSON(json: JSON) -> [Item] {
        var result = [Item]()
        
        for c in json {
            result.append(Item(json: c.1))
        }
        
        return result
    }
}
