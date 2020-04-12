//
//  HttpService.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import Alamofire

protocol HttpService {
    var sessionManager: Session { get set }
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
