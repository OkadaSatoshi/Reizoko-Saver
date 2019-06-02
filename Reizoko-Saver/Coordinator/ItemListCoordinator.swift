//
//  ItemListCoordinator.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/06/02.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import UIKit

class ItemListCoordinator: Coordinator {
    
    private let presenter: UITabBarController
    private var itemListViewController: ItemListViewController?
    
    init(presenter: UITabBarController) {
        self.presenter = presenter
    }
    
    func start() {
        let navVC = R.storyboard.itemList.instantiateInitialViewController()
        itemListViewController = navVC?.viewControllers[0] as? ItemListViewController
        presenter.addChild(itemListViewController!)
    }
}
