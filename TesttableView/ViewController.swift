//
//  ViewController.swift
//  TesttableView
//
//  Created by Denis Kobylkov on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    var identifier = "testIdentifier"
    var dataArray = ["Swift","JavaScript","Php","Kotlin","Rust"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.register(TestTableViewCell.self, forCellReuseIdentifier: identifier)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: identifier, for:  indexPath) as? TestTableViewCell
        cell?.setLanguage(language: dataArray[indexPath.row])
        return cell ?? TestTableViewCell()
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondViewController = SecondViewController()
        secondViewController.language = dataArray[indexPath.row]
        present(secondViewController, animated: true)
    }
}


