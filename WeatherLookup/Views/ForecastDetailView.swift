//
//  ForecastDetailView.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import SwiftUI

struct ForecastDetailView: View {
    let forecast: Forecast
    var body: some View {
        VStack {
            Text(String(format: "%.1f", forecast.temperature.temp))
                .font(.system(size: 60, weight: .bold, design: .default))
                .edgesIgnoringSafeArea(.top)
            HStack(alignment: .top) {
                Spacer()
                Text(String(format: "Feels Like: %.1f", forecast.temperature.tempFeelsLike))
                    .font(.headline)
            }
            Spacer()
                .frame(height: 40)
            HStack {
                Text(forecast.weathers[0].name)
                    .font(.system(size: 30, weight: .bold, design: .default))
                Spacer()
            }
            HStack {
                Text(forecast.weathers[0].description)
                    .font(.headline)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct ForecastDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastDetailView(forecast: Forecast(weathers: [Weather(name: "Clear", description: "Clear sky")], temperature: Temperature(temp: 70, tempFeelsLike: 0, tempMax: 0, tempMin: 0)))
    }
}
