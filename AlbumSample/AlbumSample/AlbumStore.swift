//
//  AlbumStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import Foundation

struct Album: Decodable {
    let artistName: String
    let albumTitle: String
    let image: String
}

struct AlbumResponse: Decodable {
    let albums: [Album]
}

class AlbumStore: ObservableObject {
    private static let instance = AlbumStore()
    static func get() -> AlbumStore { instance }
    @Published var albums = [Album]()
    
    func load() {
        guard let url = Bundle.main.url(forResource: "albums.json", withExtension: "") else {
            print("BUG??????")
            return
        }
//        let url = Bundle.main.url(forResource: "res/albums.json", withExtension: "")!

        guard let data = try? Data(contentsOf: url) else {
            print("Data load failed")
            return
        }
        
        let decoder = JSONDecoder()
        guard let albumResponse = try? decoder.decode(AlbumResponse.self, from: data) else {
            print("Invalid JSON?")
            return
        }

        albums = albumResponse.albums
    }
    func loadRemote() {
        let url = URL(string: "http://scgyong.net/thumbs/index.php")!
        URLSession.shared.dataTask(with: url) { data, resp, err in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            guard let albumResponse = try? decoder.decode(AlbumResponse.self, from: data) else {
                print("Invalid JSON?")
                return
            }

            OperationQueue.main.addOperation {
                self.albums = albumResponse.albums
            }
        }.resume()
    }
}
