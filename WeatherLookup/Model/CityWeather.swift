//
//  City.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import Foundation

struct CityWeather: Codable {
    var city: City
    var forecasts: [Forecast]
    
    enum CodingKeys: String, CodingKey {
        case city
        case forecasts = "list"
    }
    
    init(cityName: String) {
        self.city = City(cityName)
        self.forecasts = []
    }
}

struct City: Codable, Identifiable {
    var id: Double = 0
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
    
    init(_ name: String) {
        self.name = name
    }
}
