//
//  TabViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit

enum TabItem: String, CaseIterable {
    case homepage
    case setting
}

extension TabItem {
    var viewController: UIViewController {
        switch self {
        case .homepage:
            return EasyViewController()
        case .setting:
            return SimpleViewController()
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .homepage:
            return UIImage(named: "icon-home")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        case .setting:
            return UIImage(named: "icon-setting")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        }
    }
    
    var iconSelected: UIImage? {
        switch self {
        case .homepage:
            return UIImage(named: "icon-home")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        case .setting:
            return UIImage(named: "icon-setting")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        }
    }
    
    var name: String {
        return self.rawValue.capitalized
    }
}
