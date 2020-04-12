//
//  CoordinatorProtocol.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 11/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

protocol CoordinatorProtocol: class {
    
    // se puede crear un controlador de vista para las dependencia que se necesiten
    var childCoodinator: [CoordinatorProtocol]{ get set }
    
    func start()
}

extension CoordinatorProtocol{
    
    func add(coordinator: CoordinatorProtocol) -> Void {
        childCoodinator.append(coordinator)
    }
    
    func revome(coordinator: CoordinatorProtocol) -> Void {
        childCoodinator = childCoodinator.filter({$0 !== coordinator})
    }
}





