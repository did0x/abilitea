//
//  QuestionFeederSpa.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import Foundation
import UIKit

struct QuestionFeederSpa{
    
    var arrOfQuestionSpa : [QuestionStruct] = []
    
    init(){
        //initialize all objects
        
        let question0 = QuestionStruct(questionImage:"spatial-0", questionText:"What would the 3D shape look like from above?", optionA:"spatial-0A", optionB:"spatial-0B", optionC:"spatial-0C", optionD:"spatial-0D", answer:"spatial-0A", category: "Spatial Reasoning")
        
        let question1 = QuestionStruct(questionImage:"spatial-1", questionText:"Which of the given shapes is the same #D shape but in a different position?", optionA:"spatial-1A", optionB:"spatial-1B", optionC:"spatial-1C", optionD:"spatial-1D", answer:"spatial-1D", category: "Spatial Reasoning")
        
        let question2 = QuestionStruct(questionImage:"spatial-2", questionText:"Which of the given shapes is a rotation of the main image?", optionA:"spatial-2A", optionB:"spatial-2B", optionC:"spatial-2C", optionD:"spatial-2D", answer:"spatial-2D", category: "Spatial Reasoning")
        
        let question3 = QuestionStruct(questionImage:"spatial-3", questionText:"Which of the given shapes is a rotation of the main image?", optionA:"spatial-3A",optionB:"spatial-3B",optionC:"spatial-3C",optionD:"spatial-3D",answer:"spatial-3C", category: "Spatial Reasoning")
        
        let question4 = QuestionStruct(questionImage:"spatial-4", questionText:"Which figure is identical to the first?", optionA:"spatial-4A", optionB:"spatial-4B", optionC:"spatial-4C", optionD:"spatial-4D", answer:"spatial-4C", category: "Spatial Reasoning")
        
        let question5 = QuestionStruct(questionImage:"spatial-5", questionText:"Which figure is identical to the first?", optionA:"spatial-5A", optionB:"spatial-5B", optionC:"spatial-5C", optionD:"spatial-5D", answer:"spatial-5B", category: "Spatial Reasoning")
        
        let question6 = QuestionStruct(questionImage:"spatial-6", questionText:"Which figure is identical to the first?", optionA:"spatial-6A", optionB:"spatial-6B", optionC:"spatial-6C", optionD:"spatial-6D", answer:"spatial-6A", category: "Spatial Reasoning")
        
        let question7 = QuestionStruct(questionImage:"spatial-7", questionText:"Which group can be assembled to make the shape shown?", optionA:"spatial-7A", optionB:"spatial-7B", optionC:"spatial-7C", optionD:"spatial-7D", answer:"spatial-7C", category: "Spatial Reasoning")
        
        let question8 = QuestionStruct(questionImage:"spatial-8", questionText:"Which group can be assembled to make the shape shown?", optionA:"spatial-8A", optionB:"spatial-8B", optionC:"spatial-8C", optionD:"spatial-8D", answer:"spatial-8B", category: "Spatial Reasoning")
        
        let question9 = QuestionStruct(questionImage:"spatial-9", questionText:"Which pattern can be folded to make the cube shown?", optionA:"spatial-9A", optionB:"spatial-9B", optionC:"spatial-9C", optionD:"spatial-9D", answer:"spatial-9A", category: "Spatial Reasoning")
        
        
        arrOfQuestionSpa.append(question0)
        arrOfQuestionSpa.append(question1)
        arrOfQuestionSpa.append(question2)
        arrOfQuestionSpa.append(question3)
        arrOfQuestionSpa.append(question4)
        arrOfQuestionSpa.append(question5)
        arrOfQuestionSpa.append(question6)
        arrOfQuestionSpa.append(question7)
        arrOfQuestionSpa.append(question8)
        arrOfQuestionSpa.append(question9)

    }
}
