//
//  ApplicationCoordinator.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/06/01.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import Foundation
import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    let rootViewController: UITabBarController
    
    init(window: UIWindow) {
        self.window = window
        let tabVC = R.storyboard.main.instantiateInitialViewController()!
        rootViewController = tabVC
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
