//
//  ViewController.swift
//  No.3
//
//  Created by ktrade on 2020/8/12.
//  Copyright © 2020 Swift. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleNum: UILabel!
    @IBOutlet weak var sendImage: UIImageView!
    @IBOutlet weak var sendLabel: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func lookAnswerButton(_ sender: UIButton) {

        answerLabel.isHidden = false
        
    }
    
    @IBAction func passButton(_ sender: UIButton) {
        next()
        titleNumber += 1
        titleNum.text = String("第 \(titleNumber) 題")
    }
    
    
    var titleNumber: Int = 1
    
    var models = QAMdoel()
    // 範圍
    let randoms = GKShuffledDistribution(lowestValue: 0, highestValue: qaArray.count-1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleImage.image = UIImage(named: "moose")
        titleNum.text = "第 \(titleNumber) 題"
        sendImage.image = UIImage(named: "dog")
        answerImage.image = UIImage(named: "pig")

        next()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    func next() {
        let randomQuestion = qaArray[randoms.nextInt()]
        sendLabel.text = randomQuestion.question
        answerLabel.text = randomQuestion.answer
        answerLabel.isHidden = true
    }
    
    
    
}

