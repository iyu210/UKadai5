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
    private var alertController: UIAlertController!
    @IBAction func calcButton(_ sender: Any) {
        guard leftTextField.text != "" else {
            alert(title: "課題5", message: "割られる数を入力してください。", responseMessage: "OK")
            return
        }
        guard rightTextField.text != "" else {
            alert(title: "課題5", message: "割る数を入力してください。", responseMessage: "OK")
            return
        }
        let num1 = Float(leftTextField.text ?? "") ?? 0
        let num2 = Float(rightTextField.text ?? "") ?? 0
        if num2 == 0 {
            alert(title: "課題5", message: "割る数には0以外を入力してください。", responseMessage: "OK")
            rightTextField.text = ""
        } else {
            print(num1 / num2)
            resultLabel.text = "\(num1 / num2)"
        }
    }
    func alert(title: String, message: String, responseMessage: String) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: responseMessage, style: .default, handler: nil))
        present(alertController, animated: true)
    }
}
