//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Pablo Aguirre on 22/07/24.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherListScreen()
                .environmentObject(Store())
        }
    }
}
