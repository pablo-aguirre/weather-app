//
//  AddWeatherViewModel.swift
//  WeatherApp
//
//  Created by Pablo Aguirre on 22/07/24.
//

import Foundation

@Observable
class AddWeatherViewModel {
    var city: String = ""
    
    func save(completion: @escaping (WeatherViewModel) ->  Void) {
        Webservice().getWeatherByCity(city: city) { result in
            switch result {
            case .success(let weather):
                DispatchQueue.main.async {
                    completion(WeatherViewModel(weather: weather))
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
