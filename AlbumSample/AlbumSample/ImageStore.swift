//
//  ImageStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

class ImageStore {
    static var cache = [String: Image]()

    static func defImage() -> Image { Image(systemName: "music.note.list") }
    static func load(urlString: String, callback: @escaping (Image)->()) -> Image {
        if let img = cache[urlString] {
            return img
        }

        guard let url = URL(string: urlString) else { return defImage() }
        print("Download start: \(urlString)")
        let task = URLSession.shared.dataTask(with: url) { data, resp, err in
            guard let data = data else { return }
            guard let uiImage = UIImage(data: data) else { return }
            let image = Image(uiImage: uiImage)
            OperationQueue.main.addOperation {
                print("Download done : \(urlString)")
                cache[urlString] = image
                callback(image)
            }
        }
        task.resume()
        
        return defImage()
    }
}
