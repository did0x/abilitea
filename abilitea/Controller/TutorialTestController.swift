//
//  TutorialTestController.swift
//  abilitea
//
//  Created by William Yulio on 13/04/22.
//

import UIKit

class TutorialTestController: UIViewController{
    /// Tutorial Test Outlets
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    @IBAction func answer1Action(_ sender: UIButton) {
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
        

        
    }
    
}

