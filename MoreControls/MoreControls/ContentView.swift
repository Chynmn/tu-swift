//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    var names = [
        "hello", "world", "worl431","w3443orld1","4343world1","world43341",
        "worlfs3wd1","wogsewrld1","world1","worlfdsd1","worfsdld1","wo34435rld1",
        "wor234453ld1","worgsdgld1","worlgsdgd1","worlgsgsd1","worfsfs433ld1","w443orld1",
    ]
    @State var rotationDegrees = 0.0
    @State var large = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("Section 1") {
                        ForEach(names, id: \.self) { row in
                            NavigationLink {
                                Text("Link Destination: Hello \(row)")
                                    .font(.largeTitle)
                                    .navigationTitle(row)
                                    .navigationBarTitleDisplayMode(.inline)
                            } label: {
                                HStack {
                                    Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                                    Text("Hello \(row)")
                                }
                            }

                        }
                    }
                    Section("Second Section") {
                        Text("Hello")
                        Text("World")
                        Text("Hello")
                        Text("World")
                        Text("Hello")
                        Text("World")
                    }
                }
                .listStyle(.plain)
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
    //                .frame(width: large ? 200 : 100, height: 200)
                    .scaleEffect(large ? 1.0 : 0.5)
                    .animation(.linear(duration: 0.3), value: large ? 1.0 : 0.5)
                    .foregroundColor(.yellow)
                    .rotationEffect(.degrees(rotationDegrees * 360))
                    .shadow(color:.red, radius: 10, x: 10, y: 10)
                Slider(value: $rotationDegrees)
                    .padding()
                Toggle(isOn: $large) {
                    Text("Shows Large Circle")
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [
                    .white, .cyan
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .navigationTitle("Main")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
