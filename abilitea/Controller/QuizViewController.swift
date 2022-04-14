//
//  QuizViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import UIKit
import SnapKit

class QuizViewController: UIViewController {
    
    private let navigationBar = UINavigationBar()
    private let scrollView = UIScrollView()
    
    private let containerView = UIStackView()
    
    private let titleLabel = UILabel()
    private var lineView = UIView()
    private let questionImageView = UIImageView()
    private let questionTextView = UITextView()
    private let answerOneButton = ActionButton()
    private let answerTwoButton = ActionButton()
    private let answerThreeButton = ActionButton()
    private let answerFourButton = ActionButton()
    private let actionButton = ActionButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    private func setupHierarchy() {
        view.addSubviews(navigationBar, scrollView)
        scrollView.addSubview(containerView)
        containerView.addArrangedSubviews([titleLabel, lineView, questionImageView, questionTextView, answerOneButton, answerTwoButton, answerThreeButton, answerFourButton, actionButton])
    }
    
    private func setupLayout() {
        navigationBar.snp.makeConstraints {
            $0.leading.top.trailing.equalToSuperview()
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(navigationBar.snp.bottom).inset(4)
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        containerView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.top.bottom.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        lineView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(1)
        }

        questionImageView.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).inset(-24)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.width.height.equalTo(120)
        }

        questionTextView.snp.makeConstraints {
            $0.top.equalTo(questionImageView.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerOneButton.snp.makeConstraints {
            $0.top.equalTo(questionTextView.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerTwoButton.snp.makeConstraints {
            $0.top.equalTo(answerOneButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerThreeButton.snp.makeConstraints {
            $0.top.equalTo(answerTwoButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerFourButton.snp.makeConstraints {
            $0.top.equalTo(answerThreeButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        actionButton.snp.makeConstraints {
            $0.top.equalTo(answerFourButton.snp.bottom).inset(-24)
            $0.bottom.equalToSuperview().inset(48)
            $0.leading.trailing.equalToSuperview().inset(120)
        }
        
    }
    
    private func setupProperties() {
        titleLabel.configureWith("Question 1", color: .black, alignment: .left, size: 20, weight: .bold)
        lineView.backgroundColor = .black
        containerView.axis = .vertical
        containerView.setCustomSpacing(8, after: titleLabel)
        containerView.setCustomSpacing(18, after: questionTextView)
        containerView.setCustomSpacing(12, after: answerOneButton)
        containerView.setCustomSpacing(12, after: answerTwoButton)
        containerView.setCustomSpacing(12, after: answerThreeButton)
        containerView.setCustomSpacing(12, after: answerFourButton)
        questionImageView.backgroundColor = .black
        questionImageView.isHidden = false
        questionTextView.font = .systemFont(ofSize: 15, weight: .semibold)
        questionTextView.text = "Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?"
        questionTextView.isEditable = false
        questionTextView.isScrollEnabled = false
        
        answerOneButton.setTitle("Answer A", for: .normal)
        answerTwoButton.setTitle("Answer B", for: .normal)
        answerThreeButton.setTitle("Answer C", for: .normal)
        answerFourButton.setTitle("Answer D", for: .normal)
        actionButton.setTitle("Proceed", for: .normal)
    }
    
    

    
    // MARK: - Navigation

}
