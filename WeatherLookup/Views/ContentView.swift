//
//  ContentView.swift
//  WeatherLookup
//
//  Created by Tony Wang on 4/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var cityName: String = ""
    var isCityNameEmpty: Bool {
        cityName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    var body: some View {
        NavigationView {
            VStack(alignment:.center, spacing: 8) {
                TextField("City Name", text: $cityName)
                    .multilineTextAlignment(.center)
                Divider()
                NavigationLink(destination: ForecastListView(viewModel: ForecastListViewModel( CityWeather(cityName: cityName)))) {
                    Text("Lookup")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                }
                .padding()
                .disabled(isCityNameEmpty)
            }
            .padding()
            .onAppear(perform: {
            })
            .navigationBarTitle(cityName, displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
