//
//  GridStackView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct GridStackView<Content: View>: View {
    let cols: Int
    let rows: Int
    let content: (_ row: Int, _ col: Int)->Content
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< cols, id: \.self) { col in
                        self.content(row, col)
                    }
                }
            }
        }
    }
}

struct GridStackView_Previews: PreviewProvider {
    static var previews: some View {
        GridStackView(cols: 3, rows: 4) { row, col in
            Image(systemName: "globe")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
    }
}
