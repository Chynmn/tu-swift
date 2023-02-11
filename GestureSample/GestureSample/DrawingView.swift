//
//  DrawingView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct DrawingView: View {
    @State var angle = Angle.zero
    var body: some View {
        VStack {
            Color.red
                .frame(width: 200, height: 50)
            Rectangle()
                .stroke(lineWidth: 10)
                .fill(
                    LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(height: 50)
                .cornerRadius(5)
                .padding()
//            RoundedRectangle(cornerSize: 20)
//                .frame(height:50)
            Capsule()
                .stroke(lineWidth: 20)
                .fill(
                    RadialGradient(colors: [.yellow, .red], center: .center, startRadius: 0, endRadius: 300)
                )
                .frame(height: 50)
                .padding(.horizontal)
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)
                .rotationEffect(angle)
                .animation(
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false),
                    value: angle)
            GeometryReader { gr in
                Path { path in
                    let rect = CGRect(origin: .zero, size: gr.size)
                    path.move(to: CGPoint(x: rect.size.width/2, y: 0))
                    path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: rect.size.height), control: CGPoint(x: rect.size.width, y: rect.size.height))
                    path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: 0), control: CGPoint(x: 0, y: rect.size.height))
                    path.move(to: .zero)
                }
                .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottom))
            }
            .frame(width: 100, height: 100)
            Path { path in
                path.move(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 100, y: 200))
                path.addLine(to: CGPoint(x: 200, y: 100))
                path.addLine(to: CGPoint(x: 150, y: 50))
//                path.closeSubpath()
            }
            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
        }
        .onAppear {
            angle = .degrees(360)
        }
        .navigationTitle("Drawing")
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrawingView()
        }
    }
}
