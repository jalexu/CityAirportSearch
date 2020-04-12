//
//  SearchCityCoordinator.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 11/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import UIKit

class SearchCityCoordinator: BaseCoordinator{
    //se va a crear instancia de las vistas y sus padres
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let view = SearchCityViewController.instantiate()
        
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0)
        }
        
        navigationController.pushViewController(view, animated: true)
    }
}
