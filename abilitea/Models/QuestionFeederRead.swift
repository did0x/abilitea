//
//  QuestionFeederRead.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import Foundation
import UIKit

struct QuestionFeederRead{
    
    var arrOfQuestionRead : [QuestionStruct] = []
    
    init(){
        //initialize all objects
        
        let question0 = QuestionStruct(questionImage:"tutorialRead", questionText:"Australian researchers have discovered electroreceptors clustered at the tip of the spiny anteater’s snout. The researchers made this discovery by exposing small areas of the snout to extremely weak electrical fields and recording the transmission of resulting nervous activity to the brain. While it is true that tactile receptors, another kind of sensory organ on the anteater’s snout, can also respond to electrical stimuli, such receptors do so only in response to electrical field strengths about 1,000 times greater than those known to excite electroreceptors. \n Which of the following can be inferred about the experiment described in the first paragraph?",optionA:"Researchers had difficulty verifying the existence of electroreceptors in the anteater because electroreceptors respond to such a narrow range of electrical field strengths.",optionB:"Researchers found that the level of nervous activity in the anteater’s brain increased dramatically as the strength of the electrical stimulus was increased.",optionC:"Researchers found that some areas of the anteater’s snout were not sensitive to a weak electrical stimulus.",optionD:"Researchers found that the anteater’s tactile receptors were more easily excited by a strong electrical stimulus than were the electroreceptors.",answer:"Researchers found that some areas of the anteater’s snout were not sensitive to a weak electrical stimulus.", category: "Reading Comprehension")
        

        
        arrOfQuestionRead.append(question0)

    }
}
