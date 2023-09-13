//
//  ViewController.swift
//  Week2Assignment
//
//  Created by 1 on 2023/9/8.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var FunAct: UILabel!


@IBAction func ShowAnotherFunAct(_ sender: UIButton) {
    
    let counts = textAndBackGround.count
    let randomNum = Int.random(in: 0...(counts-1))
        let textAndbackground = textAndBackGround[randomNum]

        view.backgroundColor = textAndbackground.color
        FunAct.text = textAndbackground.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        FunAct.text = "Tap The Button!"
    }
}

