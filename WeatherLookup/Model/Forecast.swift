//
//  File.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import Foundation

struct Forecast: Codable, Identifiable {
    var id: Double = 0
    var weathers: [Weather]
    var temperature: Temperature
    
    enum CodingKeys: String, CodingKey {
        case id = "dt"
        case weathers = "weather"
        case temperature = "main"
    }
}

struct Weather: Codable, Identifiable {
    var id: Double = 0
    var name: String
    var description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "main"
        case description
    }
}

struct Temperature: Codable {
    var temp: Double
    var tempFeelsLike: Double
    var tempMax: Double
    var tempMin: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case tempFeelsLike = "feels_like"
        case tempMax = "temp_max"
        case tempMin = "temp_min"
    }
}


