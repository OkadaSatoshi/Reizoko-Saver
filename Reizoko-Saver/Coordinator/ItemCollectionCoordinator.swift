//
//  ItemCollectionCoordinator.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/06/02.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//
import UIKit

class ItemCollectionCoordinator: Coordinator {
    
    private let presenter: UITabBarController
    private var itemCollectionViewController: ItemCollectionViewController?
    
    init(presenter: UITabBarController) {
        self.presenter = presenter
    }
    
    func start() {
        let navVC = R.storyboard.itemCollection.instantiateInitialViewController()
        itemCollectionViewController = navVC?.viewControllers[0] as? ItemCollectionViewController
        presenter.addChild(navVC!)
    }
}
