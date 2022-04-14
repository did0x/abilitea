//
//  Extension.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import Foundation

import UIKit


public extension UIColor {
    
    static let primary = UIColor(red: 0.42, green: 0.36, blue: 0.89, alpha: 1)
    static let primaryDark = UIColor(red: 0.31, green: 0.25, blue: 0.67, alpha: 1)
    static let accent = UIColor(red: 0.92, green: 0.38, blue: 0.14, alpha: 1)
    static let accentLight = UIColor(red: 0.94, green: 0.66, blue: 0.41, alpha: 1)
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
}

extension UILabel {
    func configureWith(_ text: String,
                       color: UIColor,
                       alignment: NSTextAlignment,
                       size: CGFloat,
                       weight: UIFont.Weight = .regular) {
        self.font = .systemFont(ofSize: size, weight: weight)
        self.text = text
        self.textColor = color
        self.textAlignment = alignment
    }
}

extension UIView {
    func setupCornerRadius(_ cornerRadius: CGFloat = 0, maskedCorners: CACornerMask? = nil) {
        layer.cornerRadius = cornerRadius
        if let corners = maskedCorners {
            layer.maskedCorners = corners
        }
    }
    
    func animateClick(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0.15) {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } completion: { _ in
            UIView.animate(withDuration: 0.15) {
                self.transform = CGAffineTransform.identity
            } completion: { _ in completion() }
        }
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 7
    }
    
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
            return self.applyGradient(colours: colours, locations: nil)
        }

    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}

extension UIStackView {
    func addArrangedSubviews(_ subviews: [UIView]) {
        subviews.forEach { addArrangedSubview($0) }
    }
}

extension UINavigationItem {

  func setTitle(_ title: String, subtitle: String) {
    let appearance = UINavigationBar.appearance()
      
    let textColor = appearance.titleTextAttributes?[NSAttributedString.Key.foregroundColor] as? UIColor ?? .black

    let titleLabel = UILabel()
    titleLabel.text = title
      titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
    titleLabel.textColor = textColor


    let subtitleLabel = UILabel()
    subtitleLabel.text = subtitle
    subtitleLabel.font = .preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
    subtitleLabel.textColor = textColor.withAlphaComponent(0.75)

    let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
    stackView.distribution = .equalCentering
    stackView.alignment = .fill
    stackView.axis = .vertical

    self.titleView = stackView
  }
}
