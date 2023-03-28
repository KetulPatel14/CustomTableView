//
//  ViewController.swift
//  CustomTableApplication
//
//  Created by Canadore Student on 2023-03-28.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCustomTable: UITableView!
    
    struct myCell {
        let title: String
        let imageName: String
    }
    
    let data: [myCell] = [
    myCell(title: "Item1", imageName: "Image"),
    myCell(title: "Item2", imageName: "Image"),
    myCell(title: "Item3", imageName: "Image"),
    myCell(title: "Item4", imageName: "Image"),
    myCell(title: "Item5", imageName: "Image"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myCustomTable.delegate = self
        myCustomTable.dataSource = self
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected \(data[indexPath.row].title)")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = data[indexPath.row]
        let cell = myCustomTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.cellImage.image = UIImage(named: content.imageName)
        cell.cellLabel.text = content.title
        return cell
    }
}

