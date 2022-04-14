//
//  QuizViewController.swift
//  abilitea
//
//  Created by Ridho Saputra on 13/04/22.
//

import UIKit
import SnapKit

class QuizViewController: UIViewController {
    
    // Views
    private let navigationBar = UINavigationBar()
    private let scrollView = UIScrollView()
    private let containerView = UIStackView()
    
    // Outlets
    private let titleLabel = UILabel()
    private var lineView = UIView()
    private let questionImageView = UIImageView()
    private let questionTextView = UITextView()
    private let answerOneButton = ActionButton()
    private let answerTwoButton = ActionButton()
    private let answerThreeButton = ActionButton()
    private let answerFourButton = ActionButton()
    private let actionButton = ActionButton()
    
    // Data
    var arrOfQuestion: [QuestionStruct] = []
    var arrOfNumerical: [QuestionStruct] = []
    var arrOfCritical: [QuestionStruct] = []
    var arrOfProblem: [QuestionStruct] = []
    var arrOfSpatial: [QuestionStruct] = []
    var arrOfReading: [QuestionStruct] = []
    var arrOfAttention: [QuestionStruct] = []
    var arrOfCategory: [String] = ["Spatial Reasoning", "Attention to Detail", "Critical Thinking"]
    var arrOfScore: [QuestionScore] = []
    var option:String? = nil
    var numOfCategory = 3
    var questionNumber = 0
    let currTime = Date()
    var timeElapsed:String?
    var defaultValue: String = "No Image"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupHierarchy()
        setupLayout()
        setupProperties()
        filterQuestionByCategory()
        arrOfQuestion.shuffle()
        changeQuestion()
        
    }
    
    private func setupHierarchy() {
        view.addSubviews(navigationBar, scrollView)
        scrollView.addSubview(containerView)
        containerView.addArrangedSubviews([titleLabel, lineView, questionImageView, questionTextView, answerOneButton, answerTwoButton, answerThreeButton, answerFourButton, actionButton])
    }
    
    private func setupLayout() {
        navigationBar.snp.makeConstraints {
            $0.leading.top.trailing.equalToSuperview()
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(navigationBar.snp.bottom).inset(4)
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        containerView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.top.bottom.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        lineView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(1)
        }

        questionImageView.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).inset(-24)
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.width.height.equalTo(120)
        }

        questionTextView.snp.makeConstraints {
            $0.top.equalTo(questionImageView.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerOneButton.snp.makeConstraints {
            $0.top.equalTo(questionTextView.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerTwoButton.snp.makeConstraints {
            $0.top.equalTo(answerOneButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerThreeButton.snp.makeConstraints {
            $0.top.equalTo(answerTwoButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        answerFourButton.snp.makeConstraints {
            $0.top.equalTo(answerThreeButton.snp.bottom).inset(-12)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        actionButton.snp.makeConstraints {
            $0.top.equalTo(answerFourButton.snp.bottom).inset(-24)
            $0.bottom.equalToSuperview().inset(48)
            $0.leading.trailing.equalToSuperview().inset(120)
        }
        
    }
    
    private func setupProperties() {
        titleLabel.configureWith("Question 1", color: .black, alignment: .left, size: 20, weight: .bold)
        lineView.backgroundColor = .black
        containerView.axis = .vertical
        containerView.setCustomSpacing(8, after: titleLabel)
        containerView.setCustomSpacing(18, after: questionTextView)
        containerView.setCustomSpacing(12, after: answerOneButton)
        containerView.setCustomSpacing(12, after: answerTwoButton)
        containerView.setCustomSpacing(12, after: answerThreeButton)
        containerView.setCustomSpacing(12, after: answerFourButton)
        questionImageView.backgroundColor = .black
        questionImageView.isHidden = false
        questionTextView.font = .systemFont(ofSize: 15, weight: .semibold)
        questionTextView.text = "Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?Lorem ipsum is placeholder text commonly used in the graphi industrielayouts and visual mockups?"
        questionTextView.isEditable = false
        questionTextView.isScrollEnabled = false
        
        answerOneButton.setTitle("Answer A", for: .normal)
        answerTwoButton.setTitle("Answer B", for: .normal)
        answerThreeButton.setTitle("Answer C", for: .normal)
        answerFourButton.setTitle("Answer D", for: .normal)
        actionButton.setTitle("Next", for: .normal)
        
        answerOneButton.addTarget(self, action: #selector(answerOne), for: .touchUpInside)
        answerTwoButton.addTarget(self, action: #selector(answerTwo), for: .touchUpInside)
        answerThreeButton.addTarget(self, action: #selector(answerThree), for: .touchUpInside)
        answerFourButton.addTarget(self, action: #selector(answerFour), for: .touchUpInside)
        actionButton.addTarget(self, action: #selector(nextQuestion), for: .touchUpInside)
    }
    
    func filterQuestionByCategory(){
        
        arrOfScore = QuestionScoreFeeder.init().arrOfScore
        
        if (arrOfCategory.contains("Numerical Reasoning")){
            arrOfNumerical = QuestionFeederNum.init().arrOfQuestionNum
            randomizeQuestion(randomArray: arrOfNumerical)
        }
        if (arrOfCategory.contains("Problem Solving")){
            arrOfProblem = QuestionFeederProb.init().arrOfQuestionProb
            randomizeQuestion(randomArray: arrOfProblem)
        }
        if (arrOfCategory.contains("Critical Thinking")){
            arrOfCritical = QuestionFeederCrit.init().arrOfQuestionCrit
            randomizeQuestion(randomArray: arrOfCritical)
        }
        if (arrOfCategory.contains("Spatial Reasoning")){
            arrOfSpatial = QuestionFeederSpa.init().arrOfQuestionSpa
            randomizeQuestion(randomArray: arrOfSpatial)
        }
        if (arrOfCategory.contains("Attention to Detail")){
            arrOfAttention = QuestionFeederAtt.init().arrOfQuestionAtt
            randomizeQuestion(randomArray: arrOfAttention)
        }
        if (arrOfCategory.contains("Reading Comprehension")){
            arrOfReading = QuestionFeederRead.init().arrOfQuestionRead
            randomizeQuestion(randomArray: arrOfReading)
        }
    }
    
    func randomizeQuestion(randomArray: [QuestionStruct]){
        let shuffled: [QuestionStruct] = randomArray.shuffled()
        let temp = (30 / numOfCategory)
        var i = 0
        
        while (i < shuffled.count && i < temp){
            arrOfQuestion.append(shuffled[i])
            i+=1
        }
    }
    
    func checkAnswer(){
        
        let tempCategory = arrOfQuestion[questionNumber].category
        
        if option == arrOfQuestion[questionNumber].answer {
            
            switch tempCategory {
            case "Numerical":
                arrOfScore[0].totalScore += 10
            case "Problem":
                arrOfScore[1].totalScore += 10
            case "Critical":
                arrOfScore[2].totalScore += 10
            case "Reading Comprehension":
                arrOfScore[3].totalScore += 10
            case "Attention to Detail":
                arrOfScore[4].totalScore += 10
            case "Spatial Reasoning":
                arrOfScore[5].totalScore += 10
            default: break
            }
            
        }
    }
    
    func calculateTimeElapsed(){
        let time = Int(currTime.timeIntervalSinceNow) * -1
        var hour:Int
        var minute:Int
        
        hour = time / 3600
        minute = time % 3600 / 60
        
        timeElapsed = "\(String(hour)) Hr \(String(minute)) Minutes"
    }
    
    func changeQuestion(){
        
//        topicLabel.text = arrOfQuestion[questionNumber].category
        titleLabel.text = "Question \(String(questionNumber + 1)) of \(String(arrOfQuestion.count))"
        
        if arrOfQuestion[questionNumber].questionImage == nil {
            questionImageView.isHidden = true
        }else{
            questionImageView.isHidden = false
            questionImageView.image = UIImage(named: arrOfQuestion[questionNumber].questionImage ?? defaultValue)
        }
        
        questionTextView.text = arrOfQuestion[questionNumber].questionText
        answerOneButton.setTitle(arrOfQuestion[questionNumber].optionA, for: .normal)
        answerTwoButton.setTitle(arrOfQuestion[questionNumber].optionB, for: .normal)
        answerThreeButton.setTitle(arrOfQuestion[questionNumber].optionC, for: .normal)
        answerFourButton.setTitle(arrOfQuestion[questionNumber].optionD, for: .normal)
        option = nil
    }
    
    @objc func answerOne(){
        option = arrOfQuestion[questionNumber].optionA
    }
    
    @objc func answerTwo(){
        option = arrOfQuestion[questionNumber].optionB
    }
    
    @objc func answerThree(){
        option = arrOfQuestion[questionNumber].optionC
    }
    
    @objc func answerFour(){
        option = arrOfQuestion[questionNumber].optionD
    }
    
    @objc func nextQuestion(){
        checkAnswer()
        let count = arrOfQuestion.count
        if questionNumber == count-1 {

            calculateTimeElapsed()
            performSegue(withIdentifier: "toResultSegue", sender: nil)
            
        }else{
            if questionNumber == count-2 {
                actionButton.setTitle("Finish", for: .normal)
            }
            questionNumber += 1
        }
        changeQuestion()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultSegue"{
            let destinationVC = segue.destination as? ResultViewController
            destinationVC?.timeElapsed = timeElapsed
            destinationVC?.arrOfScore = arrOfScore
        }
    }
}



    
    // MARK: - Navigation


