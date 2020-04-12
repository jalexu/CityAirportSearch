//
//  SearchCityViewModel.swift
//  CityAirportSearch
//
//  Created by Jaime Uribe on 11/04/20.
//  Copyright © 2020 Jaime Uribe. All rights reserved.
//
import RxCocoa


protocol SearchCityViewPresentable {
    typealias  Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
    
}

class SearchCityViewModel: SearchCityViewPresentable {
    
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(input: SearchCityViewPresentable.Input ){
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
    }
    
}

private extension SearchCityViewModel{
    
    // se crea una extensión para retornar el output
    // stactic es una variable de clase, no se puede acceder desde otro punto, ni mucho menos se instacia al crear un objeto.. solo funciona dentrro de la clase
    static func output(input: SearchCityViewPresentable.Input ) -> SearchCityViewPresentable.Output {
        return ()
    }
}
