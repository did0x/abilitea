//
//  ResultTipsFeeder.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import Foundation
import UIKit

struct ResultTIpsFeeder{
    
    var arrOfTips : [ResultTipsStructure] = []
    
    init(){
        //initialize all objects
        
        let t0 = ResultTipsStructure(tips: "Focus is connected to attention to detail: focusing on a task reduces your rate of error. You can develop focus by participating in activities designed to enhance concentration. \nExamples of focus-sharpening activities include puzzles and memory tasks, and games such as “Where is Waldo?”. These will task your brain, improve your ability to focus, and increase your attention to detail.", category: "Attention to Detail")
        
        let t1 = ResultTipsStructure(tips: "Slowing down to observe your environment can improve attention to detail and mental health. while engaging in different activities, make efforts to pick up details in surroundings, people, and tasks.", category: "Attention to detail")
        
        let t2 = ResultTipsStructure(tips: "Try to identify the main idea in the text and putting the idea into your own words. You must sort through the information to determine what information is important and what is unimportant.", category: "Reading Comprehension")
        
        let t3 = ResultTipsStructure(tips: "Visualizing is also a strategy used to increase reading comprehension. It requires you to create, in your minds, a mental image of what you read from the text.", category: "Reading Comprehension")
        
        let t4 = ResultTipsStructure(tips: "Try making informed predictions based on what you obtain from the story or text. Predicting builds interest and understanding of the text, and it establishes a purpose for reading.", category: "Reading Comprehension")
        
        let t5 = ResultTipsStructure(tips: "Recall any mistake or failure that you make, and try to analyze what went wrong! Use your judgment to decide on how to avoid the same error next time!", category: "Critical Thinking")
        
        let t6 = ResultTipsStructure(tips: "Consider the pros and cons in every decision you made! Make sure you are right on your track!", category: "Critical Thinking")
        
        let t7 = ResultTipsStructure(tips: "Try to identify the problem and gather as many data,opinions, and arguments before analyzing the problem and make assumptions!", category: "Critical Thinking")
        
        let t8 = ResultTipsStructure(tips: "Do some important research based on the assumptions you made, and try to find facts from it!", category: "Critical Thinking")
        
        let t9 = ResultTipsStructure(tips: "Always revise on basic numerical concepts by understanding well about basic mathematic operations and how to apply them!", category: "Numerical Reasoning")
        
        let t10 = ResultTipsStructure(tips: "Don’t underestimate the value of pen, paper, and calculator! Always bring them and make sure to note all of the important points through each question!", category: "Numerical Reasoning")
        
        let t11 = ResultTipsStructure(tips: "Don’t let time pressure stop you from reading each question thoroughly! Read and understand carefully for each table/graph provided and the question as well!", category: "Numerical Reasoning")
        
        let t12 = ResultTipsStructure(tips: "Always consider only the options available by using deduction or common sense!", category: "Numerical Reasoning")
        
        let t13 = ResultTipsStructure(tips: "To be prepared maximally, always practice on simulating your ability through our apps daily :) ! By doing this will make you be more prepared and confidence on taking CAT!", category: "Numerical Reasoning")
        
        let t14 = ResultTipsStructure(tips: "When you are dealing with complex problem, always identify the problem and have understanding of what you’re hoping to solve!", category: "Problem Solving")
        
        let t15 = ResultTipsStructure(tips: "Before defining your solutions, always comes up with some research to support your statements!", category: "Problem Solving")
        
        let t16 = ResultTipsStructure(tips: "Always look for more possible solutions and try to find the best one for you!", category: "Problem Solving")
        
        let t17 = ResultTipsStructure(tips: "Consider different perspectives through the problems at hand!", category: "Problem Solving")
        
        let t18 = ResultTipsStructure(tips: "Try to learn 3D modelling, either digitally using softwares or manually using clay. A study shows that 3D Modelling improve your spatial reasoning skills", category: "Spatial Reasoning")

        
        arrOfTips.append(t0)
        arrOfTips.append(t1)
        arrOfTips.append(t2)
        arrOfTips.append(t3)
        arrOfTips.append(t4)
        arrOfTips.append(t5)
        arrOfTips.append(t6)
        arrOfTips.append(t7)
        arrOfTips.append(t8)
        arrOfTips.append(t9)
        arrOfTips.append(t10)
        arrOfTips.append(t11)
        arrOfTips.append(t12)
        arrOfTips.append(t13)
        arrOfTips.append(t14)
        arrOfTips.append(t15)
        arrOfTips.append(t16)
        arrOfTips.append(t17)
        arrOfTips.append(t18)

    }
}
