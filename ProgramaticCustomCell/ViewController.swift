//
//  ViewController.swift
//  ProgramaticCustomCell
//
//  Created by Marius Pop on 22/02/2018.
//  Copyright © 2018 SwiftUni. All rights reserved.
//

import UIKit

// 1
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let countries: [(String, String)] = [
        ("Liberia", "🇱🇷"),
        ("Myanmar", "🇲🇲"),
        ("United States of America", "🇺🇸")
    ]
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        tableView.register(CountryTableViewCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.dataSource = self
        // 2
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: UITableViewDataSource required methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CountryTableViewCell
        
        let country = countries[indexPath.row]
        cell.country.text = country.0
        cell.flag.text = country.1
        
        return cell
    }

    
    // MARK: UITableViewDelegate method
    // 3
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.row]
        print("\(country.0) is one of the three countries still using the imperial measurement system. Wicked.")
    }
}

