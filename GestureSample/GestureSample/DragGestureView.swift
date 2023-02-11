//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

func + (a: CGSize, b: CGSize) -> CGSize {
    CGSize(width: a.width + b.width, height: a.height + b.height)
}

struct DragGestureView: View {
    @State var globePos = CGSize.zero
    @State var globeFinal = CGSize.zero
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .foregroundColor(.blue)
                .offset(globeFinal + globePos)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            globePos = value.translation
                        }
                        .onEnded { value in
                            globeFinal = globeFinal + globePos
                            globePos = .zero
                        }
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
        .navigationTitle("Drag Gesture")
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DragGestureView()
        }
    }
}
