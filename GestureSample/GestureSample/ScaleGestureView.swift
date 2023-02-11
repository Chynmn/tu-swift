//
//  ScaleGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct ScaleGestureView: View {
    @State var finalScale = 1.0
    @State var currScale = 1.0
    var body: some View {
        ZStack {
            VStack {
                Image("cat1")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .scaleEffect(finalScale * currScale)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { scale in
                                currScale = scale
                            }
                            .onEnded { scale in
                                finalScale *= currScale
                                currScale = 1.0
                            }
                    )
            }
            VStack {
                Text("Scale: \(String(format: "%.1f", finalScale * currScale))")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    .padding()
                    .onTapGesture {
                        finalScale = 1.0
                    }
                Spacer()
            }
        }
        .background(
            LinearGradient(colors: [.pink.opacity(0.5), .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .navigationTitle("Scale Gesture")
    }
}

struct ScaleGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScaleGestureView()
        }
    }
}
