//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 31.01.2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let userStorage = UserStorage.shared
    private let factory = SceneFactory.self

    override func start() {
        if userStorage.passedOnboarding {
            showAuthFlow()
        } else {
            showOnboardingFlow()
        }
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}

//MARK: - Navigation metods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        factory.makeOnboardingFlow(coordinator: self,finishDelegate: self, navigationController: navigationController)
    }
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        let tabBarController = factory.makeMainFlow(coordinator: self, finishDelegate: self)
         navigationController.pushViewController(tabBarController, animated: true)
    }
    func showAuthFlow() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeAuthScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
}

//MARK: - Methods
extension AppCoordinator {
    func showSignInScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeSignInScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    func showSignUpScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeSignUpScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
}

extension AppCoordinator: CoordinatorFinishDelegate {
    
    func coordinatorDidFinish(childCoordinators: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinators)
        
        switch childCoordinators.type {
        case .onboarding:
            navigationController?.viewControllers.removeAll()
            showAuthFlow()
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        
        }
    }
}
