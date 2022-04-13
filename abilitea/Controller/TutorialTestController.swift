//
//  TutorialTestController.swift
//  abilitea
//
//  Created by William Yulio on 13/04/22.
//

import UIKit

class TutorialTestController: UIViewController{
    
    //Data
    var arrOfTutorial : [TutorialStructure] = []
    var finished:Bool = false
    
    //Data Control
    var userOption:String = ""
    var categoryCheck:Int = 3//pas di view controller sebelumnya assign nilai categoryCheck sesuai array pada feeder (menggunakan segue)
    var answerResult:Bool = false
    var answerResultDesc:String=""
    
    /// Tutorial Test Outlets
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    @IBAction func answer1Action(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionA!
        if sender.isSelected {
            sender.isSelected = false
            answer2.isSelected = false
            answer3.isSelected = false
            answer4.isSelected = false
        } else {
            sender.isSelected = true
            answer2.isSelected = false
            answer3.isSelected = false
            answer4.isSelected = false
        }
        
    }
    
    @IBAction func answer2Action(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionB!
        if sender.isSelected {
            sender.isSelected = false
            answer1.isSelected = false
            answer3.isSelected = false
            answer4.isSelected = false
        } else {
            sender.isSelected = true
            answer1.isSelected = false
            answer3.isSelected = false
            answer4.isSelected = false
        }
    }
    
    @IBAction func answer3Action(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionC!
        if sender.isSelected {
            sender.isSelected = false
            answer1.isSelected = false
            answer2.isSelected = false
            answer4.isSelected = false
        } else {
            sender.isSelected = true
            answer1.isSelected = false
            answer2.isSelected = false
            answer4.isSelected = false
        }
    }
    
    @IBAction func answer4Action(_ sender: UIButton) {
        userOption = arrOfTutorial[categoryCheck].optionD!
        if sender.isSelected {
            sender.isSelected = false
            answer1.isSelected = false
            answer2.isSelected = false
            answer3.isSelected = false
        } else {
            sender.isSelected = true
            answer1.isSelected = false
            answer2.isSelected = false
            answer4.isSelected = false
        }
    }
    
    

    @IBOutlet weak var categoryNavigationItem: UINavigationItem!
    @IBOutlet weak var navigationBarTutorial: UINavigationBar!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var buttonMultipleChoice1: UIButton!
    @IBOutlet weak var buttonMultipleChoice2: UIButton!
    @IBOutlet weak var buttonMultipleChoice3: UIButton!
    @IBOutlet weak var buttonMultipleChoice4: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrOfTutorial = TutorialFeeder.init().arrOfTutorial
        
        categoryNavigationItem.title = arrOfTutorial[categoryCheck].category
        
        if(arrOfTutorial[categoryCheck].category == "Spatial Reasoning"){
            questionImage.image = UIImage(named: arrOfTutorial[categoryCheck].questionImage!)
            questionTextView.text = arrOfTutorial[categoryCheck].questionText
        }
        else{
            if(arrOfTutorial[categoryCheck].questionImage != nil){
                questionImage.image = UIImage(named: arrOfTutorial[categoryCheck].questionImage!)
            }
            questionTextView.text = arrOfTutorial[categoryCheck].questionText
            answer1.setTitle(arrOfTutorial[categoryCheck].optionA, for: .normal)
            answer2.setTitle(arrOfTutorial[categoryCheck].optionB, for: .normal)
            answer3.setTitle(arrOfTutorial[categoryCheck].optionC, for: .normal)
            answer4.setTitle(arrOfTutorial[categoryCheck].optionD, for: .normal)
        }
        
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if (userOption == arrOfTutorial[categoryCheck].answer){
            
            answerResult = true
            
            answerResultDesc = arrOfTutorial[categoryCheck].correctanswerDesc!

            performSegue(withIdentifier: "descriptionSegue", sender: self)
        }
        else{
            answerResultDesc = arrOfTutorial[categoryCheck].wronganswerDesc!
            performSegue(withIdentifier: "descriptionSegue", sender: self)
        }
    }
    
}

