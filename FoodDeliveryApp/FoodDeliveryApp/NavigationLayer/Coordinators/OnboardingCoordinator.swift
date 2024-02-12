//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by mac on 31.01.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
 
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        print("Appcoordinator finish")
        finishDelegate?.coordinatorDidFinish(childCoordinators: self)
    }
}


private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [OnboardingPartViewController]()
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(named: "chicken-leg 1")!
        firstVC.titleText = "Delicioous Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        firstVC.bottomButtonText = "Next"
           
        let secondVC = OnboardingPartViewController()
        secondVC.imageToShow = UIImage(named: "shipped 1")!
        secondVC.titleText = "Fast Shipping"
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        secondVC.bottomButtonText = "Next"

        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(named: "medal 1")!
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        thirdVC.bottomButtonText = "Next"
    
        let fourthVC = OnboardingPartViewController()
        fourthVC.imageToShow = UIImage(named: "credit-card 1")!
        fourthVC.titleText = "Payment Online"
        fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
        fourthVC.bottomButtonText = "Cool!"

        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
