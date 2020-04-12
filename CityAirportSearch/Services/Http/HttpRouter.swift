//
//  HttpRouter.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import Alamofire

protocol HttpRouter {
    
    var baseUrlString: String{ get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    
    func body() throws -> Data?
    
    func request(usingHttpService service: HttpService) throws -> DataRequest
}

extension HttpRouter{
    
    // se instancian acá por que retornan nil.. y no se instancian en el AirportHttpRouter
    var parameters: Parameters? { return nil }
    func body() throws -> Data? {return nil}
    
    func asUrlRequest() throws -> URLRequest {
        var url = try baseUrlString.asURL()
        url.appendPathComponent(path)
        
        var request = try URLRequest(url: url, method: method, headers: headers)
        request.httpBody = try body()
        
        return request
    }
    
    func request(usingHttpService service: HttpService) throws -> DataRequest{
        return try service.request(asUrlRequest())
    }
    
}
