//
//  ViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 07/04/22.
//

import UIKit

class ViewController: UIViewController {

    //Data
    var arrOfQuestion: [questionStructure] = []
    var arrOfNumerical: [questionStructure] = []
    var arrOfCritical: [questionStructure] = []
    var arrOfProblem: [questionStructure] = []
    var arrOfCategory: [String] = ["Numerical", "Problem", "Critical"]
    var Score = questionScore()
    var option:String? = nil
    var numOfCategory = 3
    var questionNumber = 0
    
    //DataControl
    var defaultValue: String = "No Image"
    
    //Outlet
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var quizNumberLabel: UILabel!
    @IBOutlet weak var quizImage: UIImageView!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var optionABtn: UIButton!
    @IBOutlet weak var optionBBtn: UIButton!
    @IBOutlet weak var optionCBtn: UIButton!
    @IBOutlet weak var optionDBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterQuestionByCategory()
        arrOfQuestion.shuffle()
                
        quizNumberLabel.text = String(Score.numScore)
        quizImage.image = UIImage(named: arrOfQuestion[0].questionImage ?? defaultValue)
        questionTextView.text = arrOfQuestion[questionNumber].questionText
        optionABtn.setTitle(arrOfQuestion[questionNumber].optionA, for: .normal)
        optionBBtn.setTitle(arrOfQuestion[questionNumber].optionB, for: .normal)
        optionCBtn.setTitle(arrOfQuestion[questionNumber].optionC, for: .normal)
        optionDBtn.setTitle(arrOfQuestion[questionNumber].optionD, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectOptionA(_ sender: Any) {
        option = arrOfQuestion[questionNumber].optionA
    }
    
    @IBAction func selectOptionB(_ sender: Any) {
        option = arrOfQuestion[questionNumber].optionB
    }
    
    @IBAction func selectOptionC(_ sender: Any) {
        option = arrOfQuestion[questionNumber].optionC
    }
    
    @IBAction func selectOptionD(_ sender: Any) {
        option = arrOfQuestion[questionNumber].optionD
    }
    
    @IBAction func selectNextQuestion(_ sender: Any) {
        checkAnswer()
        if questionNumber == arrOfQuestion.count-1 {
            questionNumber = 0
        }else{
            questionNumber += 1
        }
        changeQuestion()
    }
    
    func filterQuestionByCategory(){
        if (arrOfCategory.contains("Numerical")){
            arrOfNumerical = questionFeederNum.init().arrOfQuestionNum
            randomizeQuestion(randomArray: arrOfNumerical)
        }
    }
    
    func randomizeQuestion(randomArray: [questionStructure]){
        let shuffled: [questionStructure] = randomArray.shuffled()
        let temp = (30 / numOfCategory)
        var i = 0
        
        while (i < shuffled.count && i < temp){
            arrOfQuestion.append(shuffled[i])
            i+=1
        }
    }
    
    func checkAnswer(){
        if option == arrOfQuestion[questionNumber].answer {
            Score.numScore += 1
        }
    }
    
    func changeQuestion(){
        quizNumberLabel.text = String(Score.numScore)
        quizImage.image = UIImage(named: arrOfQuestion[0].questionImage ?? defaultValue)
        questionTextView.text = arrOfQuestion[questionNumber].questionText
        optionABtn.setTitle(arrOfQuestion[questionNumber].optionA, for: .normal)
        optionBBtn.setTitle(arrOfQuestion[questionNumber].optionB, for: .normal)
        optionCBtn.setTitle(arrOfQuestion[questionNumber].optionC, for: .normal)
        optionDBtn.setTitle(arrOfQuestion[questionNumber].optionD, for: .normal)
        option = nil
    }
}

