//
//  Store.swift
//  WeatherApp
//
//  Created by Pablo Aguirre on 22/07/24.
//

import Foundation

class Store: ObservableObject {
    @Published var weatherList = [WeatherViewModel]()
    
    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
