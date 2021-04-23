//
//  ForecastRowView.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import SwiftUI

struct ForecastRowView: View {
    let forecast: Forecast
    var body: some View {
        VStack {
            HStack{
                Text(forecast.weathers[0].name)
                        .font(.headline)
                Spacer()
                Text("Temp:")
                        .font(.headline)
                Text(String(format: "%.1f", forecast.temperature.temp))
                        .font(.headline)
                    
            }
            .padding()
        }
        
    }
}

struct ForecastRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForecastRowView(forecast: Forecast(weathers: [Weather(name: "Clear", description: "")], temperature: Temperature(temp: 70, tempFeelsLike: 0, tempMax: 0, tempMin: 0)))
            ForecastRowView(forecast: Forecast(weathers: [Weather(name: "Clear", description: "")], temperature: Temperature(temp: 70, tempFeelsLike: 0, tempMax: 0, tempMin: 0)))

        }
        .previewLayout(.fixed(width: 320, height: 60))
    }
}
