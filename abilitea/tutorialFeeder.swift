//
//  tutorialFeeder.swift
//  abilitea
//
//  Created by Hanz Christian on 07/04/22.
//

import Foundation
import UIKit

struct tutorialFeeder{
    
    var arrOfTutorial : [tutorialStructure] = []
    
    init(){
        //initialize all objects
        let tutorial0 =  tutorialStructure(questionImage:"soal1", questionText:"Which in the following year did over 1/3 of the students who took the exam not passing it?",optionA:"2006",optionB:"2009",optionC:"2008",optionD:"None of above",answer:"2006",wronganswerDesc:"You're not Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",correctanswerDesc:"You are Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",category: "Numerical Reasoning")
        
        let tutorial1 = tutorialStructure(questionImage:"soal2", questionText:"Hendy can attempt the project where Nate or Kelly are scheduled. Kelly can attempt the project where Aileen or Sasha are scheduled. Who can be scheduled on every month?",optionA:"None of them",optionB:"Kelly",optionC:"Hendy",optionD:"Both Kelly and Hendy",answer:"Hendy",wronganswerDesc:"You're not Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",correctanswerDesc:"You are Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",category: "Problem Solving")
        
        let tutorial2 = tutorialStructure(questionImage:nil, questionText:"Statement : In a day of basketball match, the total scores made by a team were 100. Out of these, 60 scores were made by point guards and 20 were made by Lebron James.\n\nConclusions : \nI.Lebron James is not a Point Guard.\nII.60% of the team consist of point guards",optionA:"Only 1 Conclusion follows.",optionB:"Both Conclusions follow.",optionC:"I Conclusion follow while II doesn’t.",optionD:"Neither of them follow.",answer:"Neither of them follow.",wronganswerDesc:"You're not Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",correctanswerDesc:"You are Correct. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",category: "Critical Thinking")
        
        
        
        arrOfTutorial.append(tutorial0)
        arrOfTutorial.append(tutorial1)
        arrOfTutorial.append(tutorial2)
        
    }
}
