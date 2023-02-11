//
//  ContentView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    TapGestureView()
                } label: {
                    Text("Tap & LongPress")
                }
                NavigationLink {
                    DragGestureView()
                } label: {
                    Text("Drag")
                }
                NavigationLink {
                    RotationGestureView()
                } label: {
                    Text("Rotation")
                }
                NavigationLink {
                    ScaleGestureView()
                } label: {
                    Text("Scale")
                }
                NavigationLink {
                    DrawingView()
                } label: {
                    Text("Drawing Test")
                }
            }
            .navigationTitle("Gesture Test Sample")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
