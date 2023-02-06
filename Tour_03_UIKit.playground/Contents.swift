import UIKit

let tableView = UITableView()
let indexPath = IndexPath(row: 0, section: 0)
let urlString = "https://some_host.com/file.png"
let queue = OperationQueue()
queue.addOperation {
    guard let imageUrl = URL(string: urlString) else { return }
    guard let imageData = try? Data(contentsOf: imageUrl) else { return }
    guard let image = UIImage(data: imageData) else { return }
    let mainQueue = OperationQueue.main
    mainQueue.addOperation {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        cell.imageView?.image = image
    }
}
