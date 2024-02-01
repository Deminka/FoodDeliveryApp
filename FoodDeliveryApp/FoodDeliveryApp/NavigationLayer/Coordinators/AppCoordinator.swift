//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 31.01.2024.
//

import UIKit

class AppCoordinator: Coordinator {

    override func start() {
        showOnboardingFlow()
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}

//MARK: - Navigation metods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onBoardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onBoardingCoordinator)
        onBoardingCoordinator.start()
    }
    func showMainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    
    func coordinatorDidFinish(childCoordinators: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinators)
        
        switch childCoordinators.type {
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        
        }
    }
}
