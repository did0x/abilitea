////
////  TutorialController.swift
////  abilitea
////
////  Created by William Yulio on 08/04/22.
////
//
//import Foundation
//import UIKit
//import SnapKit
//
//class TutorialViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
//
////    private let tableView: UITableView = {
////        let table = UITableView ()
////
////        table.register(QuestionTableViewCell.self, forCellReuseIdentifier: QuestionTableViewCell.identifier)
////        return table
////
////    }()
//
//    @IBOutlet weak var tableContainer: UITableView!
//
//    /// Outlets
//    @IBOutlet weak var QuestionText: UILabel!
//    @IBOutlet weak var CategoryLabel: UINavigationItem!
//    @IBOutlet weak var AnswerQuestionBtn: UIButton!
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        }
//
////        NSLayoutConstraint.activate([
////            StartBtn.bottomAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>),
////        ])
//
////        view.addSubview(tableView)
//
//        tableContainer.delegate = self
//        tableContainer.dataSource = self
//
//    }
//
//
////    override func viewDidLayoutSubviews() {
////        tableView.frame = view.bounds
////    }
//
//    @IBAction func backToMainMenuBtn(_ sender: UIBarButtonItem) {
//    }
//
//    @IBAction func answerQuestionBtn(_ sender: Any) {
//
//
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You tapped me")
//    }
//
//
//    // Buat nentuin jumlah konten yang mau ditampilin ditable
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    // Asks the data source for a cell to insert in a particular location of the table view.
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // Fetch a cell of the appropriate type.
//       let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionImageCell", for: indexPath)
//
//       // Configure the cell’s contents.
//
//        cell.textLabel?.text = "Hello World"
//
//       return cell
//    }
//
//
//
//}
//
//
//
//
//
