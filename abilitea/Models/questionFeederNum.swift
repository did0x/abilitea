//
//  questionFeeder.swift
//  QuizAbilitea
//
//  Created by Hanz Christian on 06/04/22.
//

import Foundation
import UIKit

struct QuestionFeederNum {
    
    var arrOfQuestionNum : [QuestionStruct] = []
    
    init(){
        //initialize all objects
        let question0 = QuestionStruct(questionImage:"Numerical Reasoning-1", questionText:"What was the daily turnover for the drink vender in the secondary school?",optionA:"£352.30",optionB:"£247.05",optionC:"£452.90",optionD:"£345.50",answer:"£352.30",category: "Numerical Reasoning")
        //source :  https://www.practiceaptitudetests.com/numerical-reasoning-test.pdf
        
        let question1 = QuestionStruct(questionImage:"Numerical Reasoning-2", questionText:"If Heathrow Airport pledged in January to reduce cancelled flights by 80% by March, by how many cancelled flights have they failed to reach this target?",optionA:"4",optionB:"0",optionC:"14",optionD:"18",answer:"4",category: "Numerical Reasoning")
        //source: https://www.practiceaptitudetests.com/numerical-reasoning-tests/#:~:text=A%20numerical%20reasoning%20test%20is,conclusions%20from%20sets%20of%20data
        
        let question2 = QuestionStruct(questionImage:"Numerical Reasoning-3", questionText:"Between 1990 and 2000, what was the decrease in energy use for the PC Room, Meeting Rooms and Office Space combined?",optionA:"1,310kWh",optionB:"1,400kWh",optionC:"1,450kWh",optionD:"None of above",answer:"1,310kWh",category: "Numerical Reasoning")
        //source: https://www.assessmentday.co.uk/numerical/Free/NumericalTest2/Numerical-Reasoning-Test2-Solutions.pdf
        
        let question3 = QuestionStruct(questionImage:"Numerical Reasoning-4", questionText:"2,000 CHF was used to purchase USD in Q2 and then sold in Q4. How much will the amount be worth in CHF?",optionA:"2,117.65",optionB:"2,098.03",optionC:"2,077.67",optionD:"1,981.48",answer:"2,117.65",category: "Numerical Reasoning")
        //source: https://www.practiceaptitudetests.com/numerical-reasoning-tests/#:~:text=A%20numerical%20reasoning%20test%20is,conclusions%20from%20sets%20of%20data
        
        let question4 = QuestionStruct(questionImage:"Numerical Reasoning-5", questionText:"What was the average accident cost per vehicle on the road in Ribley in November?",optionA:"£0.23",optionB:"£0.47",optionC:"£15.40",optionD:"£2.30",answer:"£0.23",category: "Numerical Reasoning")
        //source: https://www.assessmentday.co.uk/numerical/Free/NumericalTest2/Numerical-Reasoning-Test2-Solutions.pdf
        
        let question5 = QuestionStruct(questionImage:"Numerical Reasoning-6", questionText:"If every employee of Company D contributes equally, how much would each employee have to contribute in order to collectively buy Company A?",optionA:"£1,000",optionB:"£1,500",optionC:"£1,700",optionD:"£2,700",answer:"£1,000",category: "Numerical Reasoning")
        //source:https://www.assessmentday.co.uk/numerical/Free/NumericalTest2/Numerical-Reasoning-Test2-Solutions.pdf
        
        let question6 = QuestionStruct(questionImage:"Numerical Reasoning-7", questionText:"If it is predicted that the number of females employed in IT will rise by 10% every year, but the number of males stays the same, what percent of IT employees would be female after a three year period?",optionA:"54.1%",optionB:"53.5%",optionC:"85.0%",optionD:"45.5%",answer:"54.1%",category: "Numerical Reasoning")
        //source:https://www.assessmentday.co.uk/numerical/Free/NumericalTest2/Numerical-Reasoning-Test2-Solutions.pdf
        
        let question7 = QuestionStruct(questionImage:"Numerical Reasoning-8", questionText:"If a drive travels an average of 4,250 miles per month driving only along motorways in an Xtam car, what is the predicted annual consumption of fuel (in gallons)?",optionA:"150",optionB:"1,500",optionC:"125",optionD:"None of above",answer:"1500",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question8 = QuestionStruct(questionImage:"Numerical Reasoning-9", questionText:"Which of the following statements is false regarding legal sector spending between Year 4 and projected Year 5?",optionA:"IT consulting will increase by £5 million",optionB:"IT consulting will match that of year 2",optionC:"IT software will exceed IT consulting",optionD:"Spending on IT hardware will decline",answer:"Spending on IT hardware will decline",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question9 = QuestionStruct(questionImage: "Numerical Reasoning-10", questionText: "Which sector represents approximately 19% of the profits from the five sectors shown?", optionA: "Leisure", optionB: "Manufacturing", optionC: "Utilities", optionD: "Government", answer: "Utilities",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question10 = QuestionStruct(questionImage:"Numerical Reasoning-11", questionText:"What is the difference between direct sales and telesales across the five teams combined?",optionA:"£10 million",optionB:"£11 million",optionC:"£12 million",optionD:"£13 million",answer:"£11 million",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question11 = QuestionStruct(questionImage:"Numerical Reasoning-12", questionText:"What was the average total percentage decrease in the number of homes sold by Bradfield Homes and Thompson Homes from May to June?",optionA:"18.18%",optionB:"13.26%",optionC:"13.04%",optionD:"8.33%",answer:"13.04%",category: "Numerical Reasoning")
        //source:https://www.practiceaptitudetests.com/numerical-reasoning-tests/#:~:text=A%20numerical%20reasoning%20test%20is,conclusions%20from%20sets%20of%20data
        
        let question12 = QuestionStruct(questionImage:"Numerical Reasoning-13", questionText:"Which share had the largest difference between highest and lowest price over the last 12 months?",optionA:"Huver Co.",optionB:"Drebs Ltd",optionC:"Fevs Plc",optionD:"Fauvers",answer:"Fevs Plc",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question13 = QuestionStruct(questionImage:"Numerical Reasoning-14", questionText:"If actual labour costs rise so as to halve their difference from the target, what will be the change in actual Gross Profit?",optionA:"Falls by £4,500",optionB:"Rises by £4,500",optionC:"Rises by £9,000",optionD:"Falls by £4,500",answer:"Falls by £4,500",category: "Numerical Reasoning")
        //source:https://www.assessmentday.com/free/numerical-reasoning-1/Numerical-Reasoning-Test1-Questions.pdf
        
        let question14 = QuestionStruct(questionImage:"Numerical Reasoning-15", questionText:"Between 1st January and 1st May the share price of Retail falls by 10%. What percentage increase in the price per share takes place between 1st May and 31st December?",optionA:"28.78%",optionB:"22.35%",optionC:"27.73%",optionD:"18.60%",answer:"28.78%",category: "Numerical Reasoning")
        //source:https://www.mathcentre.ac.uk/resources/uploaded/numerical-reasoning-test-1-questions.pdf

        arrOfQuestionNum.append(question0)
        arrOfQuestionNum.append(question1)
        arrOfQuestionNum.append(question2)
        arrOfQuestionNum.append(question3)
        arrOfQuestionNum.append(question4)
        arrOfQuestionNum.append(question5)
        arrOfQuestionNum.append(question6)
        arrOfQuestionNum.append(question7)
        arrOfQuestionNum.append(question8)
        arrOfQuestionNum.append(question9)
        arrOfQuestionNum.append(question10)
        arrOfQuestionNum.append(question11)
        arrOfQuestionNum.append(question12)
        arrOfQuestionNum.append(question13)
        arrOfQuestionNum.append(question14)
        
    }
}
