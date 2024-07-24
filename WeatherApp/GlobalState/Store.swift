//
//  Store.swift
//  WeatherApp
//
//  Created by Pablo Aguirre on 22/07/24.
//

import Foundation

class Store: ObservableObject {
    @Published var weatherList = [WeatherViewModel]()
    @Published var selectedUnit: TemperatureUnit = .kelvin
    
    init() {
        selectedUnit = UserDefaults.standard.unit
    }
    
    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
