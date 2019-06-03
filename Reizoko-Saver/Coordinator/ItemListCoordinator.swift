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
    private var navigationController: UINavigationController?
    private var itemListViewController: ItemListViewController?
    private var itemEditCoordinator: ItemEditCoordinator?
    
    init(presenter: UITabBarController) {
        self.presenter = presenter
    }
    
    func start() {
        let navVC = R.storyboard.itemList.instantiateInitialViewController()
        navigationController = navVC
        self.itemEditCoordinator = ItemEditCoordinator(presenter: navigationController!)
        itemListViewController = navVC?.viewControllers[0] as? ItemListViewController
        itemListViewController?.showEdit = { [weak self] in
            self?.showEdit()
        }
        presenter.addChild(navVC!)
        
        
    }
}

extension ItemListCoordinator: ShowEditCoordinatorProtocol {
    func showEdit() {
        itemEditCoordinator?.start()
    }
}
