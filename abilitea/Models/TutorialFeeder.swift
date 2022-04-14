//
//  tutorialFeeder.swift
//  abilitea
//
//  Created by Hanz Christian on 07/04/22.
//

import Foundation
import UIKit

struct TutorialFeeder{
    
    var arrOfTutorial : [Tutorial] = []
    
    init(){
        //initialize all objects
        
        //Numerical Reasoning
        let tutorial0 =  Tutorial(questionImage:"Tutorial - Numerical Reasoning", questionText:"This is a graphic that shows each passing students in every year.\nWhich in the following year did less over 1/3 of the students who took the exam not passing it?",optionA:"2006",optionB:"2009",optionC:"2008",optionD:"None of above",answer:"2006",wronganswerDesc:"You are Wrong!\n1/3 of the total students is equal to 1/3 * 90 = 30 students who doesnt pass/passed the test.\nIn fact, we are looking for a year in which there are more than 90-30 = 60 students passed the test.From the criteria there are only 1 year which exceeds more than 60 students who passed the test which is the answer.",correctanswerDesc:"You are Correct!\n1/3 of the total students is equal to 1/3 * 90 = 30 students who doesnt pass/passed the test.\nIn fact, we are looking for a year in which there are more than 90-30 = 60 students passed the test.From the criteria there are only 1 year which exceeds more than 60 students who passed the test which is the answer.",category: "Numerical Reasoning",categoryDescription: "Numerical Reasoning tests measures basic mathematical functions and numbers quickly and accurately, analyzing and making conclusion based on data while doing it under time pressure.",correct: "You are Correct!",wrong: "You are Wrong!")
        //source: https://www.jobtestprep.co.uk/media/28573/free-numerical-reasoning-test-questions-answers.pdf
        //description source: https://www.practiceaptitudetests.com/numerical-reasoning-test.pdf
        
        
        //Problem Solving
        let tutorial1 = Tutorial(questionImage:"Tutorial - Problem Solving", questionText:"Hendy can attempt the project where Nate or Kelly are scheduled. Kelly can attempt the project where Aileen or Sasha are scheduled. Who can be scheduled on every month?",optionA:"None of them",optionB:"Kelly",optionC:"Hendy",optionD:"Both Kelly and Hendy",answer:"Hendy",wronganswerDesc:"You are Wrong!\nIn the table, Aileen and Sasha are scheduled in all months except July, so Kelly can't be scheduled on every month. Wherelse, Hendy can attempt both Kelly's schedule and Nate's so he is available to be scheduled on every month",correctanswerDesc:"You are Correct!\nIn the table, Aileen and Sasha are scheduled in all months except July, so Kelly can't be scheduled on every month. Wherelse, Hendy can attempt both Kelly's schedule and Nate's so he is available to be scheduled on every month",category: "Problem Solving",categoryDescription: "Problem Solving test measures understanding and resolving situational problems using different types of method by observing, judging, and acting quickly when difficulties arise when they inevitably do.",correct: "You are Correct!",wrong: "You are Wrong!")
        //description source: https://myweb.fsu.edu/vshute/pdf/pvz.pdf
        
        //Critical Thinking
        let tutorial2 = Tutorial(questionImage:nil, questionText:"Statement : In a day of basketball match, the total scores made by a team were 100. Out of these, 60 scores were made by point guards and 20 were made by Lebron James.\n\nConclusions : \nI.Lebron James is not a Point Guard.\nII.60% of the team consist of point guards",optionA:"Only 1 Conclusion follows.",optionB:"Both Conclusions follow.",optionC:"I Conclusion follow while II doesn’t.",optionD:"Neither of them follow.",answer:"Neither of them follow.",wronganswerDesc:"You are Wrong!\nLebron James was never mentioned as a Point Guard, therefore the I statement is incorrect.\nThe statement shows that 60% of the SCORES were made by point guards, not 60% of the PLAYERS were the point guards, therefore the II statement is also incorrect",correctanswerDesc:"You are Correct!\nLebron James was never mentioned as a Point Guard, therefore the I statement is incorrect.\nThe statement shows that 60% of the SCORES were made by point guards, not 60% of the PLAYERS were the point guards, therefore the II statement is also incorrect",category: "Critical Thinking",categoryDescription: "Critical Thinking test measures the way human thinking to respond someone by analyzing the fact about it. It includes some concept about skillful perception, synthesis, analysis as well as evaluation of collected information.",correct: "You are Correct!",wrong: "You are Wrong!")
        //description source: https://domyessays.com/blog/the-role-of-cognitive-skills/
        
        //Reading Comprehension
        let tutorial3 = Tutorial(questionImage:nil, questionText:"Australian researchers have discovered electroreceptors clustered at the tip of the spiny anteater’s snout. The researchers made this discovery by exposing small areas of the snout to extremely weak electrical fields and recording the transmission of resulting nervous activity to the brain. While it is true that tactile receptors, another kind of sensory organ on the anteater’s snout, can also respond to electrical stimuli, such receptors do so only in response to electrical field strengths about 1,000 times greater than those known to excite electroreceptors.\n\nWhich of the following can be inferred about the experiment described in the first paragraph?",optionA:"Researchers had difficulty verifying the existence of electroreceptors in the anteater because electroreceptors respond to such a narrow range of electrical field strengths.",optionB:"Researchers found that the level of nervous activity in the anteater’s brain increased dramatically as the strength of the electrical stimulus was increased.",optionC:"Researchers found that some areas of the anteater’s snout were not sensitive to a weak electrical stimulus.",optionD:"Researchers found that the anteater’s tactile receptors were more easily excited by a strong electrical stimulus than were the electroreceptors.",answer:"You are Correct!\nResearchers found that some areas of the anteater’s snout were not sensitive to a weak electrical stimulus.",wronganswerDesc:"You are Wrong!\nThis statement is neither correlated with the first paragraph nor inferred about the experiment",correctanswerDesc:"This statement is correct and it is related to the 2nd sentence within the first paragrah which inferred the experiment",category: "Reading Comprehension",categoryDescription: "Reading comprehension test measures the ability to understand, remember, analyze, and apply what they have read.",correct: "You are Correct!",wrong: "You are Wrong!")
        //source: https://bodheeprep.com/cat-rc-practice-set-46
        //description source: https://www.testgorilla.com/test-library/cognitive-ability-tests/reading-comprehension-test/
        
        //Attention To Detail
        let tutorial4 = Tutorial(questionImage:nil, questionText:"Find out the number of times letter ‘s’ occurs in the given sentence: \nI saw Susie sitting in a shoe shop. Where she sits she shines, and where she shines, she sits",optionA:"15",optionB:"16",optionC:"17",optionD:"18",answer:"18",wronganswerDesc: "You are Wrong!\nI [s]aw [S]u[s]ie [s]itting in a [s]hoe [s]hop. Where [s]he [s]it[s] [s]he [s]hine[s], and where [s]he [s]hine[s], [s]he [s]it[s]",correctanswerDesc: "You are Correct!\nI [s]aw [S]u[s]ie [s]itting in a [s]hoe [s]hop. Where [s]he [s]it[s] [s]he [s]hine[s], and where [s]he [s]hine[s], [s]he [s]it[s]", category: "Attention To Detail",categoryDescription: "Attention to detail test measures candidates’ ability to pay attention to textual detail while processing information.",correct: "You are Correct!",wrong: "You are Wrong!")
        //source: https://www.faceprep.in/accenture/accenture-attention-to-detail-questions/
        //description source: https://www.testgorilla.com/test-library/cognitive-ability-tests/attention-to-detail-test/
        
        //Spatial Reasoning
        let tutorial5 = Tutorial(questionImage: "Tutorial - Spatial Reasoning", questionText: "Which of the given shapes is a rotation of the main image?", optionA: "A", optionB: "B", optionC: "C", optionD: "D", answer: "D", wronganswerDesc: "You are Wrong!\nThe blue circle is opposite blue starts and The big square is clockwise of the blue circle.", correctanswerDesc: "You are Correct!\nThe blue circle is opposite blue starts and The big square is clockwise of the blue circle.", category: "Spatial Reasoning",categoryDescription: "Spatial reasoning test measures the capacity to think about objects in three dimensions and to draw conclusions about those objects from limited information.",correct: "You are Correct!",wrong: "You are Wrong!")
        //source: https://www.practiceaptitudetests.com/spatial-reasoning-test.pdf
        //description source: https://www.testgorilla.com/test-library/cognitive-ability-tests/spatial-reasoning-test/
        
        
        arrOfTutorial.append(tutorial0)
        arrOfTutorial.append(tutorial1)
        arrOfTutorial.append(tutorial2)
        arrOfTutorial.append(tutorial3)
        arrOfTutorial.append(tutorial4)
        arrOfTutorial.append(tutorial5)
        
    }
}
