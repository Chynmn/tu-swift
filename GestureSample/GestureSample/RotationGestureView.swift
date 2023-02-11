//
//  RotationGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct RotationGestureView: View {
    @State var currAngle = Angle.zero
    @State var finalAngle = Angle.zero
    var body: some View {
        VStack {
            Text("Angle = \(String(format: "%.1f", (finalAngle + currAngle).degrees))")
                .font(.headline)
                .foregroundColor(.blue)
            Spacer()
            VStack {
                Image(systemName: "arrow.right.circle")
                    .font(.largeTitle)
                    .scaleEffect(4.0)
                    .padding()
                Text("This is a test text")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundColor(.purple)
            .background(Color.orange.opacity(0.3))
            .rotationEffect(finalAngle + currAngle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        currAngle = value
                    }
                    .onEnded { _ in
                        finalAngle += currAngle
                        currAngle = .zero
                    }
            )
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.2))
        .navigationTitle("Rotation Gesture")
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RotationGestureView()
        }
    }
}
