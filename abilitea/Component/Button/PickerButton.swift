//
//  PickerButton.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import UIKit

class PickerButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupProperties() {
        setupCornerRadius(16)
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: "arrowtriangle.down.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        config.titlePadding = 10
        config.imagePadding = 128
        config.imagePlacement = .trailing
        config.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
        configuration = config
        contentHorizontalAlignment = .leading
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.black.cgColor
        setTitleColor(.black, for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 20)
    }
}
