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
    let rootViewController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        
        
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
