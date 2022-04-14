//
//  EasyViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit

class EasyViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private let scrollView = UIScrollView()
    private let containerView = UIView()
    private let bannerImageView = UIImageView()
    
    private let titleLabel = UILabel()
    private let contentLabel = UILabel()
    
    private let takeTestView = UIView()
    private let backgroundImageView = UIImageView()
    private let titleTestLabel = UILabel()
    private let messageTestLabel = UILabel()
    private let actionButton = ActionButton(top: 12, left: 14, bottom: 12, right: 14, imagePosition: .leading, iconImageView: UIImage(named: "icon-lock")?.withTintColor(.white, renderingMode: .alwaysOriginal))
    
    private let historyButton = UIButton(configuration: .borderless(), primaryAction: nil)
    
    private let viewCollection = UICollectionView(frame: .zero, collectionViewLayout: .init())
    private let layout = UICollectionViewFlowLayout.init()
    
    var arrOfModule: [Module] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemIndigo
        scrollView.delegate = self
        arrOfModule = ModuleFeeder.init().arrOfModule
        setupCollectionView()
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfModule.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "QuizSegue", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! AbilityCollectionViewCell
        
        cell.abilityLabel.text = arrOfModule[indexPath.row].title
        cell.alphaView.alpha = arrOfModule[indexPath.row].completed ? 0.5 : 0.0
        cell.tagLabel.isHidden = arrOfModule[indexPath.row].completed ? false : true
        cell.backgroundImageView.image = arrOfModule[indexPath.row].image
        return cell
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "QuizSegue" {
//            let viewController = segue.destination as! YOUR_NEXT_VIEWCONTROLLER
//            viewController.strMaker = sender as? String ?? ""
//        }
//    }
    
    private func setupCollectionView() {
        layout.itemSize = CGSize(width: 150, height: 200)
        layout.minimumInteritemSpacing = 6
        layout.minimumLineSpacing = 6
        layout.scrollDirection = .horizontal
        viewCollection.setCollectionViewLayout(layout, animated: true)
        viewCollection.delegate = self
        viewCollection.dataSource = self
        viewCollection.backgroundColor = .clear
        viewCollection.contentInset = UIEdgeInsets(top: 12, left: 24, bottom: 12, right: 24)
        viewCollection.register(AbilityCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        viewCollection.alwaysBounceHorizontal = true
    }
    
    private func setupHierarchy() {
        view.addSubviews(scrollView, containerView, bannerImageView)
        scrollView.addSubview(containerView)
        containerView.addSubviews(titleLabel, contentLabel, historyButton, viewCollection, takeTestView)
        takeTestView.addSubviews(backgroundImageView, titleTestLabel, messageTestLabel, actionButton)
    }
    
    private func setupLayout() {
        bannerImageView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview().inset(24)
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(bannerImageView.snp.bottom).inset(36)
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
            $0.leading.top.equalToSuperview().inset(32)
        }
        
        contentLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-8)
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.trailing.equalTo(historyButton.snp.leading).inset(-8)
        }
        
        historyButton.snp.makeConstraints {
            $0.top.trailing.equalToSuperview().inset(32)
            $0.width.height.equalTo(48)
        }
        
        viewCollection.snp.makeConstraints {
            $0.top.equalTo(contentLabel.snp.bottom).inset(-18)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(220)
        }
        
        takeTestView.snp.makeConstraints {
            $0.top.equalTo(viewCollection.snp.bottom)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        backgroundImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview().inset(108)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(148)
        }
        
        titleTestLabel.snp.makeConstraints {
            $0.top.equalTo(backgroundImageView.snp.top).inset(21)
            $0.leading.equalTo(backgroundImageView.snp.leading)
            $0.trailing.equalTo(backgroundImageView.snp.trailing)
        }
        
        messageTestLabel.snp.makeConstraints {
            $0.top.equalTo(titleTestLabel.snp.bottom).inset(4)
            $0.leading.trailing.equalToSuperview()
        }
        
        actionButton.snp.makeConstraints {
            $0.bottom.equalTo(backgroundImageView.snp.bottom).inset(20)
            $0.leading.equalTo(backgroundImageView.snp.leading).inset(24)
            $0.trailing.equalTo(backgroundImageView.snp.trailing).inset(24)
        }
    }
    
    private func setupProperties() {
        containerView.backgroundColor = .white
        containerView.setupCornerRadius(12)
        
        bannerImageView.image = UIImage(named: "icon-illustration-header")
        bannerImageView.contentMode = .scaleAspectFit
        
        scrollView.alwaysBounceVertical = true
        
        titleLabel.configureWith("Welcome!", color: .black, alignment: .left, size: 14, weight: .bold)
        
        contentLabel.configureWith("Complete all these modules below to unlock your Cognitive test Ability.", color: .black, alignment: .left, size: 14, weight: .regular)
        contentLabel.lineBreakMode = .byWordWrapping
        contentLabel.numberOfLines = 0
        
        historyButton.setImage(UIImage(named: "icon-history")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        historyButton.backgroundColor = .systemIndigo
        historyButton.setupCornerRadius(12)
        
        backgroundImageView.image = UIImage(named: "bg-take-test")
        titleTestLabel.configureWith("Take Your Cognitive Test!", color: .white, alignment: .center, size: 24, weight: .bold)
        messageTestLabel.configureWith("Let’s try your cognitive ability", color: .white, alignment: .center, size: 14, weight: .bold)
        actionButton.setTitle("Finish Your Modules First", for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
