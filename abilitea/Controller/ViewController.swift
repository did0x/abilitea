//
//  ViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 07/04/22.
//

import UIKit

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

class HomepageViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modulCognitives.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ModuleCollectionViewCell
        
        cell.modulCognitive.image=UIImage(named: modulCognitives[indexPath.row])
//        cell.modulCognitive.layer.cornerRadius=50.0
        return cell
    }
    
    
    var modulCognitives:[String]=["homepage-module-RC-beforeFinish","homepage-module-PS-beforeFinish","homepage-module-SR-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-NM-beforeFinish","homepage-module-AtD-beforeFinish"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0x6B5BE2)
    }

}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var Occupation: UITextField!
    
    let occupations = ["Engineer","Grapich Designer","Doctor","Teacher","Lecture","Architecture","Human Resource","Physcolog","Farmers"]
    
    var pickerView = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0xFBF9FF)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        Occupation.inputView = pickerView
        Occupation.textAlignment = .center
    }
    
}

extension SettingsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return occupations.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return occupations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Occupation.text = occupations[row]
        Occupation.resignFirstResponder()
    }
    
}


