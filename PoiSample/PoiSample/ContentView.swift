//
//  ContentView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var poiData = PoiDataStore.get()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(poiData.items, id: \.RESTRT_NM) { item in
                        PoiItemView(item: item)
                    }
                }
            }
            .navigationTitle("Restaurants")
        }
        .onAppear {
            poiData.startLoading()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PoiItemView: View {
    let item: PoiItem
    var body: some View {
        NavigationLink {
            PoiDetailView(poi: item)
        } label: {
            HStack {
                Image(systemName: "fork.knife.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64)
                VStack(alignment: .leading) {
                    Text(item.RESTRT_NM)
                        .font(.title)
                        .lineLimit(2)
                        .foregroundColor(.blue)
                    Text(item.REPRSNT_FOOD_NM)
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
