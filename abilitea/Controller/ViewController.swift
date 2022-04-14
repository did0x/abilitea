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
    
    let occupationSelected =  UserDefaults.standard.object(forKey: "occupation") as? String //sebagai data yang bakal dipake buat occupation yang sesuai
   
    var modulCognitivesSD:[String]=["homepage-module-PS-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-AtD-beforeFinish"]
    var modulCognitivesGD:[String]=["homepage-module-SR-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-PS-beforeFinish"]
    var modulCognitivesAcc:[String]=["homepage-module-NM-beforeFinish","homepage-module-RC-beforeFinish","homepage-module-SR-beforeFinish"]
    var modulCognitivesSales:[String]=["homepage-module-SR-beforeFinish","homepage-module-NM-beforeFinish","homepage-module-CT-beforeFinish"]

    var modulCognitivesCE:[String] =
            ["homepage-module-SR-beforeFinish","homepage-module-NM-beforeFinish","homepage-module-PS-beforeFinish"]

    var modulCognitivesEE:[String] =
            ["homepage-module-NM-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-PS-beforeFinish"]

    var modulCognitives:[String]=["homepage-module-RC-beforeFinish","homepage-module-PS-beforeFinish","homepage-module-SR-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-NM-beforeFinish","homepage-module-AtD-beforeFinish"]
   
    
    //Data control
    var categoryCheck:Int?
    var finished:Bool = false
    
   
    //outlet countdown

    @IBOutlet weak var testLabel: UITextField!
    let currDate = Date()
    var timeRemainingSeconds:Int = 0
    var timeRemaining:String?
    var timer = Timer()
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(occupationSelected == nil){
            return modulCognitives.count //return 6
        }
        else{
            return modulCognitivesCE.count //return 3
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //placeholder
//        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ModuleCollectionViewCell
        
        if(finished != true){
            if(occupationSelected == "Software Developer/Engineer"){
                
                cell.modulCognitive.image=UIImage(named: modulCognitivesSD[indexPath.row])
    //            button.addTarget(self, action: #selector(modulCognitivesSD[indexPath.row]), for: .touchUpInside)
    //
    //            @objc func modulCognitivesSD[indexPath.row](sender: UIButton!) {
    //                cellClickable(chosen: modulCognitivesSD[indexPath.row])
    //
    //            }
                
            }
            else if(occupationSelected == "Graphic Designer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesGD[indexPath.row])
            }
            else if(occupationSelected == "Accountants"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesAcc[indexPath.row])
            }
            else if(occupationSelected == "Sales"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesSales[indexPath.row])
            }
            else if(occupationSelected == "Civil Engineer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesCE[indexPath.row])
            }
            else if(occupationSelected == "Electrical Engineer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesEE[indexPath.row])
            }
            else if(occupationSelected == nil){
                cell.modulCognitive.image=UIImage(named: modulCognitives[indexPath.row])
            }
        }
        else{
            if(occupationSelected == "Software Developer/Engineer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesSDFinished[indexPath.row])
    //            button.addTarget(self, action: #selector(modulCognitivesSD[indexPath.row]), for: .touchUpInside)
    //
    //            @objc func modulCognitivesSD[indexPath.row](sender: UIButton!) {
    //                cellClickable(chosen: modulCognitivesSD[indexPath.row])
    //
    //            }
            }
            else if(occupationSelected == "Graphic Designer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesGDFinished[indexPath.row])
            }
            else if(occupationSelected == "Accountants"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesAccFinished[indexPath.row])
            }
            else if(occupationSelected == "Sales"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesSalesFinished[indexPath.row])
            }
            else if(occupationSelected == "Civil Engineer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesCEFinished[indexPath.row])
            }
            else if(occupationSelected == "Electrical Engineer"){
                cell.modulCognitive.image=UIImage(named: modulCognitivesEEFinished[indexPath.row])
            }
            else if(occupationSelected == nil){
                cell.modulCognitive.image=UIImage(named: modulCognitivesFinished[indexPath.row])
            }
        }
//        cell.modulCognitive.layer.cornerRadius=50.0
        return cell
    }
   
    
    //untuk pengecekkan kategori pada masing-masing occupation terhadap index dalam modulCognitives
    func cellClickable(chosen:String){
        categoryCheck = modulCognitives.firstIndex(of: chosen)
    }
    func cellClickableFinsihed(chosenFinished:String){
        categoryCheck = modulCognitivesFinished.firstIndex(of: chosenFinished)
    }
    
    
//    var arrOfString:[String] = ["homepage-module-NM-beforeFinish","homepage-module-PS-beforeFinish","homepage-module-CT-beforeFinish","homepage-module-RC-beforeFinish","homepage-module-RC-beforeFinish","homepage-module-SR-beforeFinish"]
    
    
    //inisiasi variable category berdasarkan occupation - after
    var modulCognitivesSDFinished:[String]=["Problem Solving-afterFinish-FixSize","Critical Thinking-afterFinish-FixSize","Attention to Detail-afterFinish-FixSize"]
    
    var modulCognitivesGDFinished:[String]=["Spatial Reasoning-afterFinish-FixSize","Critical Thinking-afterFinish-FixSize","Problem Solving-afterFinish-FixSize"]
    
    var modulCognitivesAccFinished:[String]=["Numberical Reasoning-afterFinish-FixSize","Reading Comperhension-afterFinish-FixSize","Spatial Reasoning-afterFinish-FixSize"]
    
    var modulCognitivesSalesFinished:[String]=["Spatial Reasoning-afterFinish-FixSize","Numberical Reasoning-afterFinish-FixSize","Critical Thinking-afterFinish-FixSize"]

    var modulCognitivesCEFinished:[String] =
            ["Spatial Reasoning-afterFinish-FixSize","Numberical Reasoning-afterFinish-FixSize","Problem Solving-afterFinish-FixSize"]

    var modulCognitivesEEFinished:[String] =
            ["Numberical Reasoning-afterFinish-FixSize","Critical Thinking-afterFinish-FixSize","Problem Solving-afterFinish-FixSize"]
    
    
    var modulCognitivesFinished:[String]=["Numberical Reasoning-afterFinish-FixSize","Problem Solving-afterFinish-FixSize","Critical Thinking-afterFinish-FixSize","Reading Comperhension-afterFinish-FixSize","Attention to Detail-afterFinish-FixSize","Spatial Reasoning-afterFinish-FixSize"]
  
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
    //inisiasi variable category berdasarkan occupation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0x6B5BE2)
    }
}


