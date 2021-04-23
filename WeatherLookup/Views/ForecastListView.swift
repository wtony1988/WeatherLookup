//
//  ForecastListView.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/23/21.
//

import SwiftUI

struct ForecastListView: View {
    @ObservedObject var viewModel: ForecastListViewModel
    var body: some View {
        List((viewModel.cityWeather?.forecasts)!) { forecast in
            NavigationLink(destination: ForecastDetailView(forecast: forecast)) {
                ForecastRowView(forecast: forecast)
            }
        }
        .navigationBarTitle((viewModel.cityWeather?.city.name)!)
        .onAppear(perform: {
            viewModel.fetchForecasts()
        })
    }
}

struct ForecastListView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastListView(viewModel: ForecastListViewModel(CityWeather(cityName: "")))
    }
}
