//
//  TabViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit
import RxSwift
import SnapKit

class TabMenuController: UITabBarController {
    
    private let tab = TabBar()
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupProperties()
        bind()
        view.layoutIfNeeded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupHierarchy() {
        view.addSubview(tab)
    }
    
    private func setupLayout() {
        tab.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview()
            $0.height.equalTo(90)
        }
    }
    
    private func setupProperties() {
        tabBar.isHidden = true
        
        tab.translatesAutoresizingMaskIntoConstraints = false
        tab.addShadow()
        
        selectedIndex = 0
        let controllers = TabItem.allCases.map { $0.viewController }
        setViewControllers(controllers, animated: true)
    }
    
    private func selectTabWith(index: Int) {
        self.selectedIndex = index
    }
    
    //MARK: - Bindings
    
    private func bind() {
        tab.itemTapped
            .bind { [weak self] in self?.selectTabWith(index: $0) }
            .disposed(by: disposeBag)
    }
    
}
