//
//  ViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 07/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Data
    var arrOfTutorial : [tutorialStructure] = []
    
    //Data Control
    var userOption:String = ""
    var categoryCheck:Int = 0//pas di view controller sebelumnya assign nilai categoryCheck sesuai array pada feeder (menggunakan segue)
    
    //outlets
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var optAButton: UIButton!
    @IBOutlet weak var optBButton: UIButton!
    @IBOutlet weak var optCButton: UIButton!
    @IBOutlet weak var optDButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var correctTextView : UITextView! //belom diimplementasiin
    @IBOutlet weak var wrongTextView : UITextView! //belom diimplementasiin
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrOfTutorial = tutorialFeeder.init().arrOfTutorial
        
        categoryLabel.text = arrOfTutorial[categoryCheck].category
        if(arrOfTutorial[categoryCheck].questionImage != nil){
            questionImageView.image = UIImage(named: arrOfTutorial[categoryCheck].questionImage!)
        }
        questionTextView.text = arrOfTutorial[categoryCheck].questionText
        optAButton.setTitle(arrOfTutorial[categoryCheck].optionA, for: .normal)
        optBButton.setTitle(arrOfTutorial[categoryCheck].optionB, for: .normal)
        optCButton.setTitle(arrOfTutorial[categoryCheck].optionC, for: .normal)
        optDButton.setTitle(arrOfTutorial[categoryCheck].optionD, for: .normal)
    }
    
    
    @IBAction func selectPrev(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "tutorialText") as? tutorialTextViewController
        else{
            print("Failed to connect")
            return
        }
        present(vc, animated: true)
    }
    
    @IBAction func selectA(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionA!
    }
    
    @IBAction func selectB(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionB!
    }
    
    @IBAction func selectC(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionC!
    }
    
    @IBAction func selectD(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionD!
    }
    
    
    @IBAction func selectResult(_ sender: UIButton) {
        if(resultButton.titleLabel?.text == "Finish")
        {
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "finishTutorial") as? finishTutorialViewController
            else{
                print("Failed to connect")
                return
            }
            present(vc,animated: true)
        }else{
            if (userOption == arrOfTutorial[categoryCheck].answer){
//                    correctTextView.text = arrOfTutorial[categoryCheck].correctanswerDesc
                resultButton.setTitle("Finish", for: .normal)
            }
            else{
//                    wrongTextView.text = arrOfTutorial[categoryCheck].wronganswerDesc
                resultButton.setTitle("Wrong Answer", for: .normal)
            }
        }
    }

class tutorialTextViewController:UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func pressedNext(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "viewcontrol") as? ViewController
        else{
            print("Failed to connect")
            return
        }
        present(vc, animated: true)
    }
    
    
}

class finishTutorialViewController:UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
    }
    @IBAction func pressedPrev(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "viewcontrol") as? ViewController
        else{
            print("Failed to connect")
            return
        }
        present(vc, animated: true)
    }
    
    
}
    
}

