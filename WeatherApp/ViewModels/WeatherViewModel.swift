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
    
    var temperature: Double { weather.temperature }
    var city: String { weather.city }
    var icon: String { weather.icon }
    var sunrise: Date { weather.sunrise }
    var sunset: Date { weather.sunset }
}
