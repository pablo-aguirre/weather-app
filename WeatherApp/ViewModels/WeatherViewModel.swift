//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Pablo Aguirre on 22/07/24.
//

import Foundation

struct WeatherViewModel {
    let weather: Weather
    let id = UUID()
    
    func getTemperature(by unit: TemperatureUnit) -> Double {
        switch unit {
        case .celsius:
            return weather.temperature - 273.15
        case .fahrenheit:
            return (weather.temperature - 273) * 1.8 + 32
        case .kelvin:
            return weather.temperature
        }
    }
    
    var temperature: Double { weather.temperature }
    var city: String { weather.city }
    var icon: String { weather.icon }
    var sunrise: Date { weather.sunrise }
    var sunset: Date { weather.sunset }
}
