//
//  questionFeederCrit.swift
//  QuizAbilitea
//
//  Created by Hanz Christian on 06/04/22.
//

import Foundation
import UIKit

struct QuestionFeederProb{
    
    var arrOfQuestionProb : [QuestionStruct] = []
    
    init(){
        //initialize all objects
        let question0 = QuestionStruct(questionImage:"Problem Solving-1", questionText:"Marcadia is an online store which offers a wide range of goods to customers via mail order. Marcadia has been in existence for five years and has seen rapid growth in sales during this period, as more and more new customers signed up. However, recently Marcadia’s customer numbers have plateaued and this has resulted in slower sales and profit growth.\nThe Managing Director of Marcadia has engaged McKinsey to help her better understand the purchasing behavior of her customers. She believes that a better understanding of customer purchasing can lead to more targeted and successful marketing. She tells the team: ‘I’m sure that our most valuable customers have certain purchasing behaviors that we can identify. If we can encourage more of our customers to adopt those behaviors, we can make them more valuable to us and this can inject a new source of growth into our business.\nExhibit 3 shows some data which the team has collected regarding a sample of 500,000 Marcadia customers who signed up in the last calendar year. The customers are split into quintiles according to their one year customer value, from lowest to highest. ‘One year customer value’ is defined as the profit made by Marcadia on purchases made by a customer in their first year since signing up. Also presented is data on purchasing by customers in each quintile in their first 90 days since signing up, namely the average number of purchase transactions and the total revenue received by Marcadia from those transactions.",optionA:"None of them",optionB:"Kelly",optionC:"Hendy",optionD:"Both Kelly and Hendy",answer:"Hendy", category: "Problem Solving")
        
        arrOfQuestionProb.append(question0)

    }
    
}
