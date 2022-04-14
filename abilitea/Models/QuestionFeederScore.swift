//
//  QuestionFeederScore.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import Foundation
import UIKit

struct QuestionScoreFeeder{
    
    var arrOfScore : [QuestionScore] = []
    
    init(){
        //initialize all objects
        
        let s0 = QuestionScore(totalScore: 0, category: "Numerical Reasoning")
        
        let s1 = QuestionScore(totalScore: 0, category: "Problem Solving")
        
        let s2 = QuestionScore(totalScore: 0, category: "Critical Thinking")
        
        let s3 = QuestionScore(totalScore: 0, category: "Reading Comprehension")
        
        let s4 = QuestionScore(totalScore: 0, category: "Attention to Detail")
        
        let s5 = QuestionScore(totalScore: 0, category: "Spatial Reasoning")

        
        arrOfScore.append(s0)
        arrOfScore.append(s1)
        arrOfScore.append(s2)
        arrOfScore.append(s3)
        arrOfScore.append(s4)
        arrOfScore.append(s5)

    }
}
