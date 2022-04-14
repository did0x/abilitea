//
//  questionFeederCrit.swift
//  QuizAbilitea
//
//  Created by Hanz Christian on 06/04/22.
//

import Foundation
import UIKit

struct questionFeederCrit{
    
    var arrOfQuestionCrit : [questionStructure] = []
    
    init(){
        //initialize all objects
        let question0 = questionStructure(questionImage: nil, questionText: "Statement : In a day of basketball match, the total scores made by a team were 100. Out of these, 60 scores were made by point guards and 20 were made by Lebron James, Conclusions : I. Lebron James is not a Point Guard.  II. 60% of the team consist of point guards.", optionA: "Only 1 Conclusion follows", optionB: "Both Conclusions follow.", optionC: "First Conclusion follow while second doesn't", optionD: "Neither of them follow", answer: "Neither of them follow", category: "Critical Thinking")
        
        arrOfQuestionCrit.append(question0)
        
    }
}
