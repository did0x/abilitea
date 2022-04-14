//
//  AbilityCollectionViewCell.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit

class AbilityCollectionViewCell: UICollectionViewCell {
    
    let backgroundImageView = UIImageView()
    let abilityLabel = UILabel()
    let tagLabel = LabelPadding(top: 4, left: 8, bottom: 4, right: 8)
    let alphaView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        addSubviews(backgroundImageView, abilityLabel, alphaView, tagLabel)
    }
    
    private func setupLayout() {
        backgroundImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(150)
            $0.height.equalTo(200)
        }
        
        abilityLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(18)
            $0.trailing.equalToSuperview().inset(36)
            $0.bottom.equalToSuperview().inset(26)
        }
        
        alphaView.snp.makeConstraints {
            $0.top.equalTo(backgroundImageView.snp.top)
            $0.leading.equalTo(backgroundImageView.snp.leading).inset(4)
            $0.trailing.equalTo(backgroundImageView.snp.trailing).inset(10)
            $0.bottom.equalTo(backgroundImageView.snp.bottom).inset(12)
        }
        
        tagLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview().inset(14)
        }
    }
    
    private func setupProperties() {
        abilityLabel.configureWith("", color: .white, alignment: .left, size: 12, weight: .bold)
        abilityLabel.lineBreakMode = .byWordWrapping
        abilityLabel.numberOfLines = 0
        
        alphaView.backgroundColor = .black
        alphaView.alpha = 0.5
        alphaView.setupCornerRadius(21)
        
        tagLabel.configureWith("Completed", color: .white, alignment: .left, size: 12, weight: .bold)
        tagLabel.backgroundColor = .systemIndigo
        tagLabel.setupCornerRadius(12)
    }
}
