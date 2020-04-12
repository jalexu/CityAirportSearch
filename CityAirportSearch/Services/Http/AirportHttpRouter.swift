//
//  AirportHttpRouter.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import Alamofire


enum AirportHttpRouter {
    case getAirports
}

extension AirportHttpRouter: HttpRouter{
    
    var baseUrlString: String {
        return "https://gist.githubusercontent.com/tdreyno/4278655/raw/7b0762c09b519f40397e4c3e100b097d861f5588"
    }
    
    var path: String {
        switch self {
        case .getAirports:
            return "aiports.json"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getAirports:
            return .get
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
    
    
}
