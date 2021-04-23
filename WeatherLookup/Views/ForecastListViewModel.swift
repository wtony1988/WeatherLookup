//
//  ForecastListViewModel.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import SwiftUI
import Combine
class ForecastListViewModel: ObservableObject {
    @Published var cityWeather: CityWeather?
    
    init(_ cityWeather: CityWeather) {
        self.cityWeather = cityWeather
    }
        
    func fetchForecasts() {
        print(cityWeather?.city.name)
        WebServices().getCityWeather(cityName: (cityWeather?.city.name)!) { (cityWeather, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else {
                guard let cityWeather = cityWeather else {
                    print("Fetch weather failed: Empty weather")
                    return
                }
                
                DispatchQueue.main.async {
                    self.cityWeather = cityWeather
                }
            }
        }
    }
    
}
