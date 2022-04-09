//
//  questionFeederCrit.swift
//  QuizAbilitea
//
//  Created by Hanz Christian on 06/04/22.
//

import Foundation
import UIKit

struct questionFeederProb{
    
    var arrOfQuestionProb : [questionStruct] = []
    
    init(){
        //initialize all objects
        let question0 = questionStruct(questionImage:"soal2", questionText:"Hendy can attempt the project where Nate or Kelly are scheduled. Kelly can attempt the project where Aileen or Sasha are scheduled. Who can be scheduled on every month?",optionA:"None of them",optionB:"Kelly",optionC:"Hendy",optionD:"Both Kelly and Hendy",answer:"Hendy")
        
        arrOfQuestionProb.append(question0)

    }
    
}
