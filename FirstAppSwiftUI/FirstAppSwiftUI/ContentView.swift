//
//  ContentView.swift
//  FirstAppSwiftUI
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Circle()
                .frame(width: 100)
                .foregroundColor(.green)
            Button {
                print("Pressed")
            } label: {
                ZStack{
                    Capsule()
                        .stroke(lineWidth: 5)
                    Text("This is a button")
                        .foregroundColor(.black)
                }
                .frame(width:200, height: 60)
            }
            
            Text("Hello, tukorea!")
                .font(.largeTitle)
                .foregroundColor(.purple)
            HStack {
                Image(systemName: "folder.badge.plus")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("WoW")
            }
            .padding()
            .background(Color.cyan)
            .padding()
            .background(Color.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
