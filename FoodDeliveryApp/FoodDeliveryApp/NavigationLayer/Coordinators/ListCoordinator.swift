//
//  ListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 01.02.2024.
//

import UIKit

class ListCoordinator: Coordinator {
 
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}
