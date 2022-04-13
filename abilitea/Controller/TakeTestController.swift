//
//  TakeTest Controller.swift
//  abilitea
//
//  Created by William Yulio on 13/04/22.
//

import UIKit

class TakeTestController: UIViewController{
    /// TakeTest Outlets
    
    @IBOutlet weak var navigationBarTakeTest: UINavigationItem!
    @IBOutlet weak var questionTotalLabel: UILabel!
    @IBOutlet weak var imageQuestionTakeTest: UIImageView!
    @IBOutlet weak var labelQuestionTakeTest: UITextView!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var finishBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    
    @IBAction func answer1Action( sender: UIButton) {
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

        @IBAction func answer2Action( sender: UIButton) {
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

        @IBAction func answer3Action( sender: UIButton) {
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

        @IBAction func answer4Action( sender: UIButton) {
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
    
}
