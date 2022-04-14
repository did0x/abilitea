//
//  PaddingLabel.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import UIKit

class LabelPadding: UILabel {

    var padding = UIEdgeInsets(top: 2, left: 8, bottom: 2, right: 8)
    
    init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        super.init(frame: .zero)
        self.padding = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }

    override var intrinsicContentSize : CGSize {
        let superContentSize = super.intrinsicContentSize
        let width = superContentSize.width + padding.left + padding.right
        let heigth = superContentSize.height + padding.top + padding.bottom
        return CGSize(width: width, height: heigth)
    }



}
