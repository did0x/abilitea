//
//  questionStructure.swift
//  QuizAbilitea
//
//  Created by Hanz Christian on 06/04/22.
//

import Foundation
import UIKit

struct questionStruct{

    let questionImage:String?
    let questionText:String?
    let optionA:String?
    let optionB:String?
    let optionC:String?
    let optionD:String?
    let answer:String?
    let category:String?
}

//extension questionStruct{
//    func merge(with: questionStruct) -> questionStruct{
//        var new = questionStruct()
//        new.questionText = questionText ?? with.questionText
//    }
//}

