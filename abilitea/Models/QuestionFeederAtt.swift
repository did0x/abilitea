//
//  QuestionFeederAtt.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import Foundation
import UIKit

struct QuestionFeederAtt{
    
    var arrOfQuestionAtt : [QuestionStruct] = []
    
    init(){
        //initialize all objects
        let question0 = QuestionStruct(questionImage:nil, questionText:"Find out the number of times letter ‘s’ occurs in the given sentence: \nI saw Susie sitting in a shoe shop. Where she sits she shines, and where she shines, she sits",optionA:"15",optionB:"16",optionC:"17",optionD:"18",answer:"18", category: "Attention to Detail")
        
        let question1 = QuestionStruct(questionImage:nil, questionText:"If DELHI is coded as CCIDD, how would you encode BOMBAY?",optionA:"AJMTVT",optionB:"AMJXVS",optionC:"MJXVSU",optionD:"WXYZAX",answer:"AMJXVS", category: "Attention to Detail")
        
        let question2 = QuestionStruct(questionImage:nil, questionText:"Which of the following matches the pattern? AS%T88%43", optionA:"AS%T88&53", optionB:"AS%T88%43", optionC:"AS%t88%43", optionD:"AS^%^7834", answer:"AS%T88%43", category: "Attention to Detail")
        
        let question3 = QuestionStruct(questionImage:nil, questionText:"Pick out the different one:", optionA:"Time", optionB:"Chain", optionC:"Bangle", optionD:"Bracelet", answer:"Time", category: "Attention to Detail")
        
        let question4 = QuestionStruct(questionImage:nil, questionText:"Count the number of Vowels in \nWHAT YOU THINK YOU BECOME", optionA:"7", optionB:"6", optionC:"9", optionD:"8", answer:"9", category: "Attention to Detail")
        
        let question5 = QuestionStruct(questionImage:nil, questionText:"Select the option that matches the sample below. \nZY96828", optionA:"ZY96288", optionB:"ZY69828", optionC:"ZY96828", optionD:"ZY96882", answer:"ZY96828", category: "Attention to Detail")
        
        let question6 = QuestionStruct(questionImage:nil, questionText:"Select the option that matches the sample below. \n5696343", optionA:"5696433", optionB:"5966343", optionC:"5693643", optionD:"5696343", answer:"5696343", category: "Attention to Detail")
        
        let question7 = QuestionStruct(questionImage:nil, questionText:"1. If * stands for / \n2. / stands for - \n3. + stands for * and - stands for + \nThen 9/8*7+5-10 = ?", optionA:"13.3", optionB:"10.7", optionC:"10.8", optionD:"11.4", answer:"13.3", category: "Attention to Detail")
        
        let question8 = QuestionStruct(questionImage:nil, questionText:"Select the option that matches the sample below. \nZY96828", optionA:"ZY96288", optionB:"ZY69828", optionC:"ZY96828", optionD:"ZY96882", answer:"ZY96828", category: "Attention to Detail")
        
        let question9 = QuestionStruct(questionImage:nil, questionText:"Select the option that matches the sample below. \n5696343", optionA:"5696433", optionB:"5966343", optionC:"5693643", optionD:"5696343", answer:"5696343", category: "Attention to Detail")
        
        arrOfQuestionAtt.append(question0)
        arrOfQuestionAtt.append(question1)
        arrOfQuestionAtt.append(question2)
        arrOfQuestionAtt.append(question3)
        arrOfQuestionAtt.append(question4)
        arrOfQuestionAtt.append(question5)
        arrOfQuestionAtt.append(question6)
        arrOfQuestionAtt.append(question7)
        arrOfQuestionAtt.append(question8)
        arrOfQuestionAtt.append(question9)

    }
}
