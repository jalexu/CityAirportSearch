//
//  BaseCoordinator.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 11/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

class BaseCoordinator: CoordinatorProtocol {
    
    var childCoodinator: [CoordinatorProtocol] = []
    
    func start() {
        
        fatalError("Children should implement 'start'.")
        
    }
    
    
}
