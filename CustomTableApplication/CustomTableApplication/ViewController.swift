//
//  ViewController.swift
//  CustomTableApplication
//
//  Created by Canadore Student on 2023-03-28.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var myCustomTable: UITableView!
    
    @IBOutlet weak var myCustomTable: UITableView!
    struct myCell {
        let title: String
        let marks: String
        let grade: String
        let imageName: String
    }
    
    let data: [myCell] = [
        myCell(title: "Ketul", marks: "85", grade: "A", imageName: "Image"),
    myCell(title: "Harshil" ,marks: "90", grade: "A+" , imageName: "Image"),
    myCell(title: "Bhumi",marks: "95", grade: "A+", imageName: "Image"),
    myCell(title: "Shailee",marks: "92", grade: "A+", imageName: "Image"),
    myCell(title: "Neel", marks: "96", grade: "A+",imageName: "Image"),
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
        print("Selected \(data[indexPath.row].marks)")
        print("Selected \(data[indexPath.row].grade)")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = data[indexPath.row]
        let cell = myCustomTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.cellImage.image = UIImage(named: content.imageName)
        cell.cellLabel.text = content.title
        cell.cellMarks.text = content.marks
        cell.cellGrade.text = content.grade
        return cell
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) -> CGFloat{
        return 140
    }
}

