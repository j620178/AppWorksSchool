//
//  ViewController.swift
//  ShowStation
//
//  Created by littlema on 2019/7/6.
//  Copyright © 2019 littema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let stationIDLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = label.font.withSize(30)
        label.text = "defaultID"
        return label
    }()
    let stationNameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = label.font.withSize(80)
        label.text = "defaultName"
        return label
    }()
    let stationAddressLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = label.font.withSize(18)
        label.text = "defaultAddress"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.orange
        
        view.addSubview(stationIDLable)
        view.addSubview(stationNameLable)
        view.addSubview(stationAddressLable)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        NSLayoutConstraint.activate([
            stationIDLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stationIDLable.bottomAnchor.constraint(equalTo: stationNameLable.topAnchor, constant: -35),
            
            stationNameLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stationNameLable.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            
            stationAddressLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stationAddressLable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
            ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let urlStr = "https://stations-98a59.firebaseio.com/practice.json"
        if let url = URL(string: urlStr) {
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                if let data = data, let station = try? decoder.decode(StationData.self, from: data) {
                    DispatchQueue.main.async {
                        self.stationIDLable.text = station.stationID
                        self.stationNameLable.text = station.stationName
                        self.stationAddressLable.text = station.stationAddress
                    }
                }
            }
            task.resume()
        }
    }
}

