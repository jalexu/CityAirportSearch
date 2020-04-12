//
//  ViewController.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 11/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

class SearchCityViewController: UIViewController, Storyboardable {
    
    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    //se intancia el protocolo 
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Airports"
        // Do any additional setup after loading the view.
        
        viewModel = viewModelBuilder((
            searchText: searchTextField.rx.text.orEmpty.asDriver(), ()
        ))
    }


}

