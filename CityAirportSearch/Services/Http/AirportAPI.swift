//
//  AirportAPI.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import RxSwift

protocol AirportAPI {
    
    func fetchAirports() -> Void
}
