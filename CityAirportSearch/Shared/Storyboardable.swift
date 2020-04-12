//
//  Storyboardable.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 12/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboardable {
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController{
    
    static func instantiate() -> Self {
        let fullName =  NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
}
