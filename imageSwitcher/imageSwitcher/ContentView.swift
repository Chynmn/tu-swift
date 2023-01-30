//
//  ContentView.swift
//  imageSwitcher
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/01/30.
//

import SwiftUI

//struct ImageModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        (content as! Image)
//            .resizable()    //  이미지가 짤리지 않도록 함
//            .frame(width: 250, height: 200)
//    }
//}

struct ContentView: View {
    static let names = [
        "kym1",
        "kym2",
        "kym3",
        "kym4",
        "kym5",
    ]
    @State var page = 1
    
    let total = ContentView.names.count
    var body: some View {
        VStack {
            HStack {
                Button {
                    if page > 1 {
                        page -= 1
                    }
                } label: {
                    Image(systemName: "arrow.left.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                }
                .disabled(page == 1)
                Spacer()
                Text("\(page) / \(total)")
                    .font(.largeTitle)
                Spacer()
                Button{
                    if page < ContentView.names.count {
                        page += 1
                    }
                    
                } label: {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                }
                .disabled(page == total)
            }
            Spacer()
            Text("Hello, Kyoungmin!")
                .font(.largeTitle)
            Spacer()
            Image(ContentView.names[page - 1])
                .resizable()
                .frame(width: 400, height: 300)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
