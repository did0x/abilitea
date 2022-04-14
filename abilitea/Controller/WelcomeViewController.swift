//
//  WelcomepageViewController.swift
//  abilitea
//
//  Created by Hanz Christian on 12/04/22.
//

import Foundation
import UIKit
import SnapKit
import Lottie

class WelcomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let occupationSelected =  UserDefaults.standard.object(forKey: "occupation") as? String //sebagai data yang bakal dipake buat occupation yang sesuai
    
    @IBOutlet weak var ilustrationImageView: UIImageView!
    @IBOutlet weak var occupationButton: UIButton!
    
    @IBAction func proceedPressed(_ sender: UIButton){
        performSegue(withIdentifier: "OccupationSegue", sender: nil)
    }
    
//    var occupationChose:Bool = false
    
    @IBAction func popUpPicker(_ sender: UIButton) {
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))

        pickerView.dataSource = self
        pickerView.delegate = self
        
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        
        vc.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Select Occupation", message: "", preferredStyle: .actionSheet)
        alert.setValue(vc, forKey: "contentViewController")
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(UIAlertAction) in
        }))
        alert.addAction(UIAlertAction(title: "Proceed", style: .default, handler: {(UIAlertAction) in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            let selectedOccupation = Array(self.occupations)[self.selectedRow] //yang dipilih user, dijadiin parameter terhadap kategori yang diambil
            
//            if(selectedOccupation == "Occupation"){
//
//            }
            self.occupationButton.setTitle(selectedOccupation, for: .normal)
            UserDefaults.standard.set(selectedOccupation, forKey: "occupation")
//            self.occupationChose = true //untuk memastikan occupation sudah terpilih
        }))
        self.present(alert,animated: true,completion: nil)
    }
    
    private let containerView = UIView()
    private let scrollView = UIScrollView()
    private let titleLabel = UILabel()
    private let messageLabel = UILabel()
    private let animView = AnimationView(name: "anim-welcome")
    private let occupationLabel = UILabel()
    private let pickerButton = PickerButton()
    private let actionButton = ActionButton()
    
    private let occupations = ["Software Developer/Engineer","Graphic Designer","Accountants","Sales","Civil Engineer","Electrical Engineer"]
    
    private var screenWidth = UIScreen.main.bounds.width - 10
    private var screenHeight = UIScreen.main.bounds.height / 3
    private var selectedRow = 0
    
    override func viewDidLoad() {
//        if(occupationChose == true){
//            performSegue(withIdentifier: "OccupationSegue", sender: nil)
//        }
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    private func setupHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubviews(titleLabel, messageLabel, animView, occupationLabel, pickerButton, actionButton)
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints {
            $0.top.equalToSuperview()
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
            $0.top.equalToSuperview().inset(72)
            $0.centerX.equalToSuperview()
        }
        messageLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        animView.snp.makeConstraints {
            $0.top.equalTo(messageLabel.snp.bottom)
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(480)
        }
        occupationLabel.snp.makeConstraints {
            $0.top.equalTo(animView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
        pickerButton.snp.makeConstraints {
            $0.top.equalTo(occupationLabel.snp.bottom).inset(-16)
            $0.leading.trailing.equalToSuperview().inset(48)
        }
        actionButton.snp.makeConstraints {
            $0.top.equalTo(pickerButton.snp.bottom).inset(-48)
            $0.bottom.equalToSuperview().inset(48)
            $0.leading.trailing.equalToSuperview().inset(120)
        }
    }
    
    private func setupProperties() {
        titleLabel.configureWith("Welcome", color: .black, alignment: .center, size: 32, weight: .bold)
        messageLabel.configureWith("Train & understand every category of cognitive ability to reach your goals.", color: .black.withAlphaComponent(0.8), alignment: .center, size: 16, weight: .semibold)
        messageLabel.lineBreakMode = .byWordWrapping
        messageLabel.numberOfLines = 0
        animView.contentMode = .scaleAspectFill
        animView.loopMode = .loop
        animView.animationSpeed = 0.8
        animView.play(fromFrame: 0, toFrame: 30)
        occupationLabel.configureWith("What is your Occupation ?", color: .black, alignment: .center, size: 20, weight: .bold)
        pickerButton.setTitle("Occupation", for: .normal)
        pickerButton.addTarget(self, action: #selector(popUp), for: .touchUpInside)
        actionButton.setTitle("Proceed", for: .normal)
        actionButton.addTarget(self, action: #selector(proceeed), for: .touchUpInside)
    }
    
    @objc func proceeed(){
        performSegue(withIdentifier: "OccupationSegue", sender: nil)
    }
    
    @objc func popUp() {
        let viewController = UIViewController()
        viewController.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))

        pickerView.dataSource = self
        pickerView.delegate = self
        
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        
        viewController.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Select Occupation", message: "", preferredStyle: .actionSheet)
        alert.setValue(viewController, forKey: "contentViewController")
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(UIAlertAction) in
        }))
        alert.addAction(UIAlertAction(title: "Proceed", style: .default, handler: {(UIAlertAction) in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            let selectedOccupation = Array(self.occupations)[self.selectedRow]
            
            // self.occupationButton.setTitle(selectedOccupation, for: .normal)
            self.pickerButton.setTitle(selectedOccupation, for: .normal)
            UserDefaults.standard.set(selectedOccupation, forKey: "occupation")
        }))
        self.present(alert,animated: true,completion: nil)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let labelOccupation = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 10))
        labelOccupation.text = occupations[row]
        labelOccupation.sizeToFit()
        return labelOccupation
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return occupations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
}
