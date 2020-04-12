//
//  AirportHttpService.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import Alamofire

class AirportHttpService: HttpService{
    
    var sessionManager: Session = Session.default
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200..<400)
    }
    
    
    
}
