//
//  SettingsViewController.swift
//  abilitea
//
//  Created by Hanz Christian on 12/04/22.
//

import Foundation
import UIKit
import SnapKit

class SettingsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return occupations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }

    //data control
    var screenWidth = UIScreen.main.bounds.width - 10
    var screenHeight = UIScreen.main.bounds.height / 2
    var selectedRow = 0
    
    let occupationSelected =  UserDefaults.standard.object(forKey: "occupation") as? String //ngambil data occupation yang bakal diubah
    
    let occupations = ["Software Developer/Engineer","Graphic Designer","Accountants","Sales","Civil Engineer","Electrical Engineer"]
    
    var pickerView = UIPickerView()
    
    //Outlets
    let linearLayout = UIStackView()
    
    @IBOutlet weak var pickerviewButton: UIButton!
    
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
            self.pickerviewButton.setTitle(selectedOccupation, for: .normal)
            UserDefaults.standard.set(selectedOccupation, forKey: "occupation")
//            self.occupationChose = true //untuk memastikan occupation sudah terpilih
        }))
        self.present(alert,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0xFBF9FF)
    }
    
    @objc(pickerView:viewForRow:forComponent:reusingView:) func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let labelOccupation = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 10))
        labelOccupation.text = occupations[row]
        labelOccupation.sizeToFit()
        return labelOccupation
    }
    
    
}

