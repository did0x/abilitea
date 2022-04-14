//
//  SimpleViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import UIKit

class SimpleViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private let titleLabel = UILabel()
    private var lineView = UIView()
    private let occupationLabel = UILabel()
    private let pickerButton = PickerButton()
    
    private let occupations = ["Software Developer/Engineer","Graphic Designer","Accountants","Sales","Civil Engineer","Electrical Engineer"]
    
    private var screenWidth = UIScreen.main.bounds.width - 10
    private var screenHeight = UIScreen.main.bounds.height / 3
    private var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        setupProperties()
    }
    
    private func setupHierarchy() {
        view.addSubviews(titleLabel, lineView, occupationLabel, pickerButton)
    }
    
    private func setupLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(72)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        
        lineView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(1)
        }
        
        occupationLabel.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).inset(-24)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        
        pickerButton.snp.makeConstraints {
            $0.top.equalTo(occupationLabel.snp.bottom).inset(-16)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
    }
    
    private func setupProperties() {
        titleLabel.configureWith("Setting", color: .black, alignment: .left, size: 32, weight: .bold)
        lineView.backgroundColor = .black
        occupationLabel.configureWith("Change your occupation here,", color: .black, alignment: .left, size: 20, weight: .bold)
        pickerButton.setTitle("Occupation", for: .normal)
        pickerButton.addTarget(self, action: #selector(popUp), for: .touchUpInside)
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: "arrowtriangle.down.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        config.imagePadding = 186
        config.imagePlacement = .trailing
        config.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
        pickerButton.configuration = config
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
