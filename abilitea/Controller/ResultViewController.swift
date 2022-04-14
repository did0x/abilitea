//
//  ResultViewController.swift
//  abilitea
//
//  Created by Farrel Brian on 14/04/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var Label0: UILabel!
    @IBOutlet weak var Label01: UILabel!
    @IBOutlet weak var Label02: UILabel!
    @IBOutlet weak var Textview01: UITextView!
    @IBOutlet weak var Button01: UIButton!
    
    var arrOfScore:[QuestionScore] = []
    var arrOfTips:[ResultTipsStructure] = []
    var arrOfScoreStr:[String] = []
    var timeElapsed:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrOfTips = ResultTIpsFeeder.init().arrOfTips
        Label0.text = timeElapsed
        showScore()
        // Do any additional setup after loading the view.
    }
    
    func showScore(){

//        var temp:String = ""
        var i = 0
       
        if arrOfScore[4].totalScore != 0{
            Label01.text = String(arrOfScore[4].totalScore) + " %"
            Label02.text = arrOfScore[4].category
            
            while i < arrOfScore.count{
                if arrOfScore[4].category == arrOfTips[i].category{
                    Textview01.text = arrOfTips[i].tips
                    break
                }
                i += 1
            }
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
