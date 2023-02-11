//
//  TapGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct TapGestureView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("Tap!, \(count)")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .onTapGesture {
                    print("Tap")
                    count += 1
                }
            Text("LongPress!, \(count)")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .onLongPressGesture {
                    count += 10
                }
        }
        .navigationTitle("Tap and LongPress")
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TapGestureView()
        }
    }
}
