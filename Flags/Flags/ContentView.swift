//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Region.all, id: \.title) { region in
                    Section(region.title) {
                        ForEach(region.countries, id: \.name) { country in
                            NavigationLink {
                                CountryDetailView(country: country)
                            } label: {
                                CountryView(country: country)
                            }
                        }
                    }
                }
            }
            .navigationTitle("iTunes Countries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CountryView: View {
    let country: Country
    var body: some View {
        HStack {
            Image(country.file)
                .resizable()
                .frame(width: 60, height: 60)
            VStack {
                Text(country.name)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(country.name.count) million people")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
            }
        }
    }
}
