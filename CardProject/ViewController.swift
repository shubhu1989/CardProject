//
//  ViewController.swift
//  CardProject
//
//  Created by CitySpidey on 8/24/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrColor = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arrColor = [.fColor, .sColor, .tColor, .foColor, .fiColor]
        setupTableView()
        print("Hello")
    }
    
    private func setupTableView(){
        let tableView = UITableView()
        tableView.delegate = self;
        tableView.dataSource = self
        tableView.register(CardViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CardViewCell
        cell.cardView.backgroundColor = arrColor[indexPath.row]
        //cell.backgroundColor = indexPath.row % 2 == 0 ? .blue : .red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

extension UIColor {
    static let fColor = UIColor.init(red: 255/255, green: 89/255, blue: 95/255, alpha: 1)
    static let sColor = UIColor.init(red: 255/255, green: 202/255, blue: 58/255, alpha: 1)
    static let tColor = UIColor.init(red: 138/255, green: 201/255, blue: 38/255, alpha: 1)
    static let foColor = UIColor.init(red: 25/255, green: 136/255, blue: 196/255, alpha: 1)
    static let fiColor = UIColor.init(red: 106/255, green: 76/255, blue: 147/255, alpha: 1)
}

