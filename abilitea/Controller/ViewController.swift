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

class WelcomepageViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var ilustrationImageView: UIImageView!
    @IBOutlet weak var occupationButton: UIButton!
    
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
            let selected = Array(self.occupations)[self.selectedRow] //yang dipilih user, dijadiin parameter terhadap kategori yang diambil
            self.occupationButton.setTitle(selected, for: .normal)
        }))
        self.present(alert,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ilustrationImageView.image = UIImage(named: "ilustrasiSementara")
    }
    
    //data control
    var screenWidth = UIScreen.main.bounds.width - 10
    var screenHeight = UIScreen.main.bounds.height / 2
    var selectedRow = 0
    
    let occupations = ["Engineer","Grapich Designer","Doctor","Teacher","Lecture","Architecture","Human Resource","Physcolog","Farmers"]
    
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

class HomepageViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    //outlet countdown

    @IBOutlet weak var testLabel: UITextField!
    let currDate = Date()
    var timeRemainingSeconds:Int = 0
    var timeRemaining:String?
    var timer = Timer()
    
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
        runCountdown()
    }

    //countdown

    func runCountdown(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.countTime), userInfo: nil, repeats: true)
        
    }
    
    @objc func countTime(){
        timeRemainingSeconds = 86400 + Int(currDate.timeIntervalSinceNow)
        var hour:Int
        var minute:Int
        
        hour = timeRemainingSeconds / 3600
        minute = timeRemainingSeconds % 3600 / 60
        
        timeRemaining = "\(String(hour)) Hr \(String(minute)) Minutes"
        
        testLabel.text = timeRemaining
        
        if timeRemainingSeconds == 0{
            timer.invalidate()
        }
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


