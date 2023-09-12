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
        let randomNum = Int.random(in: 0...6)
        var textAndbackground: (color: UIColor, text: String)

        if randomNum < textAndBackGround.count {
            let textAndBackgroundValue = textAndBackGround[randomNum]
            textAndbackground = (textAndBackgroundValue.color, textAndBackgroundValue.text)
        } else {
            let defaultValue = textAndBackGround[0]
            textAndbackground = (defaultValue.color, defaultValue.text)
        }

        view.backgroundColor = textAndbackground.color
        FunAct.text = textAndbackground.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FunAct.text = "Tap The Button!"
    }
}

