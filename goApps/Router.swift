//
//  Router.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

enum Router: URLRequestConvertible {
    
    static let baseURLString = "http://test.goapps.vipserv.org/"
    
    case getItems()
    
    var method: HTTPMethod {
        switch self {
        case .getItems():
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .getItems():
            return "index.php"
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let url = try Router.baseURLString.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        
        switch self {
        case .getItems():
            urlRequest = try URLEncoding.default.encode(urlRequest, with: nil)
        }
        return urlRequest
    }
}
