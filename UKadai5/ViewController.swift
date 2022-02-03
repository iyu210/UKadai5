//
//  ViewController.swift
//  UKadai5
//
//  Created by 岩渕優児 on 2022/02/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var leftTextField: UITextField!
    @IBOutlet weak private var rightTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    @IBAction func calcButton(_ sender: Any) {
        guard let num1 = Float(leftTextField.text ?? "") else {
            alert(title: "課題5", message: "割られる数を入力してください。")
            return
        }

        guard let num2 = Float(rightTextField.text ?? "") else {
            alert(title: "課題5", message: "割る数を入力してください。")
            return
        }

        guard num2 != 0 else {
            alert(title: "課題5", message: "割る数には0以外を入力してください。")
            rightTextField.text = ""
            return
        }

        resultLabel.text = "\(num1 / num2)"
    }
    
    func alert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
    }
}
