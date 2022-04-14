//
//  ActionButton.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import UIKit

class ActionButton: UIButton {
    
    private var insets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
    private var imagePosition: NSDirectionalRectEdge?
    private var iconImageView: UIImage?
    
    init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat, imagePosition: NSDirectionalRectEdge? = nil, iconImageView: UIImage? = nil) {
        super.init(frame: .zero)
        self.insets = NSDirectionalEdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
        self.imagePosition = imagePosition
        self.iconImageView = iconImageView
        setupProperties()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
        titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [UIColor.accent.cgColor, UIColor.accentLight.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0, y: -0.5)
        gradientLayer.cornerRadius = 16
        layer.insertSublayer(gradientLayer, at: 0)
        return gradientLayer
    }()
    
    private func setupProperties() {
        setupCornerRadius(16)
        var config = UIButton.Configuration.plain()
        config.contentInsets = insets
        if iconImageView != nil {
            config.image = iconImageView
            config.imagePlacement = imagePosition ?? .trailing
            config.imagePadding = 12
        }
        configuration = config
        setTitleColor(.white, for: .normal)
    }

}
