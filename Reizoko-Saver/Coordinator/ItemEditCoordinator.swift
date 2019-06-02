//
//  ItemEditCoordinator.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/06/02.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import UIKit

protocol ItemEditTransitionDelegate {
    func showItemEdit()
}

class ItemEditCoordinator: Coordinator {
    
    let presenter: UINavigationController
    var editViewController: ItemEditViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let editNaviVC = R.storyboard.itemEdit().instantiateInitialViewController()
        presenter.present(editNaviVC!, animated: true, completion: nil)
    }
}
