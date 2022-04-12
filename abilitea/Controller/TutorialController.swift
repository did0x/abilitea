//
//  TutorialController.swift
//  abilitea
//
//  Created by William Yulio on 08/04/22.
//

import Foundation
import UIKit


class TutorialViewController: UIViewController {
    
    @IBOutlet weak var TableContainer: UITableView!
    
    /// Outlets
    @IBOutlet weak var QuestionText: UILabel!
    @IBOutlet weak var CategoryLabel: UINavigationItem!
    @IBOutlet weak var AnswerQuestionBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableContainer.delegate = self
        TableContainer.dataSource = self
        
    }
    
    @IBAction func backToMainMenuBtn(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func answerQuestionBtn(_ sender: Any) {
        
        
    }
    


}

extension TutorialViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }


}

extension TutorialViewController: UITableViewDataSource{

    // Asks the data source for a cell to insert in a particular location of the table view.

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
       let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionImageCell", for: indexPath)

       // Configure the cell’s contents.
       cell.textLabel!.text = "Cell text"

       return cell
    }

    // Buat nentuin jumlah konten yang mau ditampilin ditable
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

}
