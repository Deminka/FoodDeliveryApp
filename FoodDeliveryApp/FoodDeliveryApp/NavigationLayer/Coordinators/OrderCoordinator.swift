//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 01.02.2024.
//

import UIKit

class OrderCoordinator: Coordinator {
 
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}
