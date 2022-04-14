//
//  TabBar.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit
import RxSwift
import RxCocoa
import RxGesture

final class TabBar: UIStackView {
    
    var itemTapped: Observable<Int> { itemTappedSubject.asObservable() }
    
    private lazy var tabMenus: [TabMenu] = [homeItem, settingItem]
    
    private let homeItem = TabMenu(with: .homepage, index: 0)
    private let settingItem = TabMenu(with: .setting, index: 1)
    
    private let itemTappedSubject = PublishSubject<Int>()
    private let disposeBag = DisposeBag()
    
    init() {
        super.init(frame: .zero)
        
        setupHierarchy()
        setupProperties()
        bind()
        
        setNeedsLayout()
        layoutIfNeeded()
        selectItem(index: 0)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        addArrangedSubviews([homeItem, settingItem])
    }
    
    private func setupProperties() {
        self.distribution = .fillEqually
        self.alignment = .center
        self.backgroundColor = .white
        
        self.isLayoutMarginsRelativeArrangement = true
        self.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24)
        self.spacing = 48
    
        tabMenus.forEach {
            $0.setupCornerRadius(12)
            $0.snp.makeConstraints {
                $0.top.bottom.equalToSuperview().inset(24)
            }
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.clipsToBounds = true
        }
    }
    
    private func selectItem(index: Int) {
        tabMenus.forEach { $0.isSelected = $0.index == index}
        itemTappedSubject.onNext(index)
    }
    
    //MARK: - Bindings
    
    private func bind() {
        homeItem.rx.tapGesture()
            .when(.recognized)
            .bind { [weak self] _ in
                guard let self = self else { return }
                self.homeItem.animateClick {
                    self.selectItem(index: self.homeItem.index)
                }
            }
            .disposed(by: disposeBag)
        
        settingItem.rx.tapGesture()
            .when(.recognized)
            .bind { [weak self] _ in
                guard let self = self else { return }
                self.settingItem.animateClick {
                    self.selectItem(index: self.settingItem.index)
                }
            }
            .disposed(by: disposeBag)
    }
}
