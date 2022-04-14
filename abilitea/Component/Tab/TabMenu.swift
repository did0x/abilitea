//
//  TabTitle.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit
import SnapKit

final class TabMenu: UIView {
    
    private let nameLabel = UILabel()
    private let iconImageView = UIImageView()
    private let containerView = UIView()
    let index: Int
    
    var isSelected = false {
        didSet {
            animateItems()
        }
    }
    
    private let item: TabItem
    
    init(with item: TabItem, index: Int) {
        self.item = item
        self.index = index
        
        super.init(frame: .zero)
        
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        addSubview(containerView)
        containerView.addSubviews(nameLabel, iconImageView)
    }
    
    private func setupLayout() {
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.center.equalToSuperview()
        }
    
        iconImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(12)
            $0.centerY.equalToSuperview()
            $0.height.width.equalTo(24)
        }
        
        nameLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(iconImageView.snp.trailing).inset(-12)
            $0.height.equalTo(16)
        }
    }
    
    private func setupProperties() {
        nameLabel.configureWith(item.name, color: .black, alignment: .center, size: 14, weight: .semibold)
        nameLabel.textColor = isSelected ? .white : .black
        
        containerView.backgroundColor = isSelected ? .systemIndigo : .white
        
        iconImageView.image = isSelected ? item.iconSelected : item.icon
    }
 
    private func animateItems() {
        UIView.animate(withDuration: 0.4) { [unowned self] in
            self.nameLabel.textColor = isSelected ? .white : .black
            self.containerView.backgroundColor = isSelected ? .systemIndigo : .white
        }
        UIView.transition(with: iconImageView,
                          duration: 0.4,
                          options: .transitionCrossDissolve) { [unowned self] in
            self.iconImageView.image = self.isSelected ? self.item.iconSelected : self.item.icon
        }
    }

}
