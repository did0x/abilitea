//
//  SimpleViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit

class SimpleViewController: UIViewController {

    private let titleLabel = UILabel()
    private let button = ActionButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    private func setupHierarchy() {
        view.addSubviews(titleLabel, button)
    }
    
    private func setupLayout() {
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        button.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(12)
            $0.leading.trailing.equalToSuperview().inset(48)
        }
    }
    
    private func setupProperties() {
        titleLabel.configureWith("Setting", color: .black, alignment: .center, size: 28, weight: .bold)
        button.setTitle("Proceed", for: .normal)
        button.addTarget(self, action: #selector(proceeed), for: .touchUpInside)
        view.backgroundColor = .white
    }

    @objc func proceeed(){
        performSegue(withIdentifier: "QuizSegue", sender: self)
    }
}
