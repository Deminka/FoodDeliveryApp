//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 01.02.2024.
//

import UIKit

class HomeCoordinator: Coordinator {
 
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .gray
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}
